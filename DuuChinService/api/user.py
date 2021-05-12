from api import Api
from app.models import TUser
from flask import request, jsonify
from schema import Schema, SchemaError


@Api.route("/user/list", methods=['POST'])
def getUserList():
    args = request.form.to_dict()
    page = int(args.get('page', 1))
    limit = int(args.get('limit', 5))
    type = args.get('type', '')

    try:
        Schema(lambda x: x > 0, error='page必须 > 1').validate(page)
        Schema(lambda x: 5 <= x <= 30, error='limit必须在5~30中').validate(limit)
        Schema(lambda x: x in ['', 'NORMAL_USE', 'DQ_SINGER', 'DQ_OFFICIAL_ACCOUNT'],
               error='type必须为NORMAL_USER,DQ_SINGER,DQ_OFFICIAL_ACCOUNT中的一个').validate(type)
    except SchemaError as e:
        return jsonify(code=500, msg=str(e))

    try:
        page_data = TUser.query.filter(TUser.type == type if type != '' else True).paginate(page, limit)
        data = []
        for it in page_data.items:
            item = it.__dict__.copy()
            del item['_sa_instance_state']
            data.append(item)

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


@Api.route("/user/info/<id>", methods=['GET'])
def getUserInfo(id):
    try:
        Schema(lambda x: x > 0, error='id必须 > 0').validate(int(id))
    except SchemaError as e:
        return jsonify(code=500, msg=str(e))
    try:
        user = TUser.query.filter(TUser.id == id).first()
        if not user:
            return jsonify(code=500, msg="用户不存在")
        item = user.__dict__.copy()
        del item['_sa_instance_state']
        return jsonify(code=0, msg="success", info=item)
    except Exception as e:
        print(e)
        return jsonify(code=500, msg="数据库操作错误")
