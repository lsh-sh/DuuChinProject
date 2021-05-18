from api import Api
from app.models import TSong,TUser
from flask import request, jsonify
from schema import Schema, SchemaError

@Api.route("/song/list", methods=['POST'])
def getSongList():
    args = request.form.to_dict()
    page = int(args.get('page', 1))
    limit = int(args.get('limit', 5))

    try:
        Schema(lambda x: x > 0, error='page必须 > 1').validate(page)
        Schema(lambda x: 5 <= x <= 30, error='limit必须在5~30中').validate(limit)
    except SchemaError as e:
        return jsonify(code=500, msg=str(e))

    try:
        page_data = TSong.query.outerjoin(TUser,TUser.id==TSong.userId).\
            with_entities(
                TSong.id,
                TSong.userId,
                TSong.coverPictureUrl,
                TSong.songUrl,
                TSong.cnName,
                TSong.enName,
                TSong.commentCount,
                TSong.thumbUpCount,
                TSong.readCount,
            TUser.id,
            TUser.coverPictureUrl,
            TUser.nickname,
            TUser.type,
            TUser.musicCount,
            TUser.musicPlayCount,
        ).order_by(TSong.id.asc()).paginate(page, limit)
        data = [{
            "id":it[0],
            "userId":it[1],
            "coverPictureUrl":it[2],
            "songUrl":it[3],
            "cnName":it[4],
            "enName":it[5],
            "commentCount":it[6],
            "thumbUpCount":it[7],
            "readCount":it[8],
            "user":{
                "id":it[9],
                "coverPictureUrl":it[10],
                "nickname":it[11],
                "type":it[12],
                "musicCount":it[13],
                "musicPlayCount":it[14]
            }
        }for it in page_data.items]

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


@Api.route("/song/info/<id>", methods=['GET'])
def getSongInfo(id):
    try:
        Schema(lambda x: x > 0, error='id必须 > 0').validate(int(id))
    except SchemaError as e:
        return jsonify(code=500, msg=str(e))
    try:
        song = TSong.query.outerjoin(TUser,TUser.id==TSong.userId).filter(TSong.id == id).first()
        if not song:
            return jsonify(code=500, msg="用户不存在")
        item = song.__dict__.copy()
        del item['_sa_instance_state']
        return jsonify(code=0, msg="success", info=item)
    except Exception as e:
        print(e)
        return jsonify(code=500, msg="数据库操作错误")