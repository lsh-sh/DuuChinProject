from api import Api
from app.models import TArticle, TUser, TVideo, TSong
from flask import request, jsonify
from schema import Schema, SchemaError
import random


@Api.route("/recommend/list", methods=['POST'])
def getRecommendList():
    args = request.form.to_dict()
    page = int(args.get('page', 1))
    limit = int(args.get('limit', 5))

    try:
        Schema(lambda x: x > 0, error='page必须 > 1').validate(page)
        Schema(lambda x: 5 <= x <= 30, error='limit必须在5~30中').validate(limit)
    except SchemaError as e:
        return jsonify(code=500, msg=str(e))

    try:
        users = TUser.query.limit(limit).offset((page - 1) * limit).all()
        songs = TSong.query.limit(limit).offset((page - 1) * limit).all()
        videos = TVideo.query.limit(limit).offset((page - 1) * limit).all()
        articles = TArticle.query.limit(limit).offset((page - 1) * limit).all()
        page = []

        for index in range(limit):
            model = random.randint(0, 3)
            key = ""
            if model == 0:
                item = users[index].__dict__.copy() if len(users) == limit else None
                key = "userEntity"
            elif model == 1:
                item = songs[index].__dict__.copy() if len(songs) == limit else None
                key = "songEntity"
            elif model == 2:
                item = videos[index].__dict__.copy() if len(videos) == limit else None
                key = "videoEntity"
            else:
                item = articles[index].__dict__.copy() if len(articles) == limit else None
                key = "articleEntity"
            del item['_sa_instance_state']
            page.append({key: item})
        return jsonify(code=0, msg="success", page=page)
    except Exception as e:
        print(e)
        return jsonify(code=500, msg="数据库操作错误")
