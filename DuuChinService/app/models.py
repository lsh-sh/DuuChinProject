from app import db


class TUser(db.Model):
    __tablename__ = "user"
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    coverPictureUrl = db.Column(db.String(255), default='')
    nickname = db.Column(db.String(40), default='')
    type = db.Column(db.String(32), default='NORMAL_USER', comment='角色 NORMAL_USER DQ_SINGER DQ_OFFICIAL_ACCOUNT')
    musicCount = db.Column(db.Integer, default=0)
    musicPlayCount = db.Column(db.Integer, default=0)


class TSong(db.Model):
    __tablename__ = "song"
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    userId = db.Column(db.Integer, nullable=True)
    coverPictureUrl = db.Column(db.String(255), default='')
    songUrl = db.Column(db.String(255), default='')
    cnName = db.Column(db.String(64), default='')
    enName = db.Column(db.String(64), default='')
    commentCount = db.Column(db.Integer, default=0)
    thumbUpCount = db.Column(db.Integer, default=0)
    readCount = db.Column(db.Integer, default=0)


class TArticle(db.Model):
    __tablename__ = "article"
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    userId = db.Column(db.Integer, nullable=True)
    coverUrlList = db.Column(db.String(255), default='', comment='多个英文逗号分割 最多四张')
    title = db.Column(db.String(64), default='')
    commentCount = db.Column(db.Integer, default=0)
    thumbUpCount = db.Column(db.Integer, default=0)
    readCount = db.Column(db.Integer, default=0)


class TVideo(db.Model):
    __tablename__ = "video"
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    userId = db.Column(db.Integer, nullable=True)
    coverPictureUrl = db.Column(db.String(255), default='')
    videoUrl = db.Column(db.String(255), default='')
    title = db.Column(db.String(64), default='')
    intro = db.Column(db.String(255), default='')
    commentCount = db.Column(db.Integer, default=0)
    thumbUpCount = db.Column(db.Integer, default=0)
    readCount = db.Column(db.Integer, default=0)
    shareCount = db.Column(db.Integer, default=0)
    contentSeconds = db.Column(db.Integer, default=0)
