from api import Api
from app.models import TVideo, TUser
from flask import request, jsonify
from schema import Schema, SchemaError


@Api.route("/video/list", methods=['POST'])
def getVideoList():
    args = request.form.to_dict()
    page = int(args.get('page', 1))
    limit = int(args.get('limit', 5))

    try:
        Schema(lambda x: x > 0, error='page必须 > 1').validate(page)
        Schema(lambda x: 5 <= x <= 30, error='limit必须在5~30中').validate(limit)
    except SchemaError as e:
        return jsonify(code=500, msg=str(e))

    try:
        page_data = TVideo.query.outerjoin(TUser, TUser.id == TVideo.userId). \
            with_entities(
            TVideo.id,
            TVideo.userId,
            TVideo.coverPictureUrl,
            TVideo.videoUrl,
            TVideo.title,
            TVideo.intro,
            TVideo.commentCount,
            TVideo.thumbUpCount,
            TVideo.readCount,
            TVideo.shareCount,
            TVideo.contentSeconds,
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
            "coverPictureUrl": it[2],
            "videoUrl": it[3],
            "title": it[4],
            "intro": it[5],
            "commentCount": it[6],
            "thumbUpCount": it[7],
            "readCount": it[8],
            "shareCount": it[9],
            "contentSeconds": it[10],
            "user": {
                "id": it[11],
                "coverPictureUrl": it[12],
                "nickname": it[13],
                "type": it[14],
                "musicCount": it[15],
                "musicPlayCount": it[16]
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


@Api.route("/video/info/<id>", methods=['GET'])
def getVideoInfo(id):
    try:
        Schema(lambda x: x > 0, error='id必须 > 0').validate(int(id))
    except SchemaError as e:
        return jsonify(code=500, msg=str(e))
    try:
        song = TVideo.query.outerjoin(TUser, TUser.id == TVideo.userId).filter(TVideo.id == id).first()
        if not song:
            return jsonify(code=500, msg="用户不存在")
        item = song.__dict__.copy()
        del item['_sa_instance_state']
        return jsonify(code=0, msg="success", info=item)
    except Exception as e:
        print(e)
        return jsonify(code=500, msg="数据库操作错误")
