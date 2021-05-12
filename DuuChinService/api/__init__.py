from flask import Blueprint

Api = Blueprint('api', __name__)

from api import user,song,video,recommend,article
