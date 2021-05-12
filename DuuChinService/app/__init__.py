from flask import Flask
from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()


def create_app():
    app = Flask(__name__)
    # app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:12345678@119.45.62.205:5306/duuchin?charset=utf8'
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:12345678@119.45.62.205:5306/duuchin?charset=utf8'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

    db.init_app(app)

    from api import Api
    app.register_blueprint(Api, url_prefix='/api')
    return app
