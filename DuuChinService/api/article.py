from api import Api
from app.models import TArticle, TUser
from flask import request, jsonify
from schema import Schema, SchemaError


@Api.route("/article/list", methods=['POST'])
def getArticleList():
    args = request.form.to_dict()
    page = int(args.get('page', 1))
    limit = int(args.get('limit', 5))

    try:
        Schema(lambda x: x > 0, error='page必须 > 1').validate(page)
        Schema(lambda x: 5 <= x <= 30, error='limit必须在5~30中').validate(limit)
    except SchemaError as e:
        return jsonify(code=500, msg=str(e))

    try:
        page_data = TArticle.query.outerjoin(TUser, TUser.id == TArticle.userId). \
            with_entities(
            TArticle.id,
            TArticle.userId,
            TArticle.coverUrlList,
            TArticle.title,
            TArticle.commentCount,
            TArticle.thumbUpCount,
            TArticle.readCount,
            TUser.id,
            TUser.coverPictureUrl,
            TUser.nickname,
            TUser.type,
            TUser.musicCount,
            TUser.musicPlayCount,
        ).paginate(page, limit)
        data = [{
            "id": it[0],
            "userId": it[1],
            "coverUrlList": it[2].split(","),
            "title": it[3],
            "commentCount": it[4],
            "thumbUpCount": it[5],
            "readCount": it[6],
            "user": {
                "id": it[7],
                "coverPictureUrl": it[8],
                "nickname": it[9],
                "type": it[10],
                "musicCount": it[11],
                "musicPlayCount": it[12]
            }
        } for it in page_data.items]
        pageinfo = {
            "total": page_data.total,
            "per_page": limit,
            "current_page": page,
            "data": data
        }
        return jsonify(code=0, msg="success", page=pageinfo)
    except Exception as e:
        print(e)
        return jsonify(code=500, msg="数据库操作错误")


@Api.route("/article/info/<id>", methods=['GET'])
def getArticleInfo(id):
    try:
        Schema(lambda x: x > 0, error='id必须 > 0').validate(int(id))
    except SchemaError as e:
        return jsonify(code=500, msg=str(e))
    try:
        song = TArticle.query.outerjoin(TUser, TUser.id == TArticle.userId).filter(TArticle.id == id).first()
        if not song:
            return jsonify(code=500, msg="用户不存在")
        item = song.__dict__.copy()
        del item['_sa_instance_state']
        item['coverUrlList'] = item['coverUrlList'].split(",")
        return jsonify(code=0, msg="success", info=item)
    except Exception as e:
        print(e)
        return jsonify(code=500, msg="数据库操作错误")
