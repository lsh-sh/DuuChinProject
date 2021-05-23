import 'package:duuchinapp/models/user_model.dart';

class ArticleList {
  final List<Article> list;

  const ArticleList(this.list);

  factory ArticleList.fromJson(List<dynamic> datas) =>
      ArticleList(datas.map((item) => Article.fromJson(item)).toList());
}

class Article {
  final int id;
  final int userId;
  final List coverUrlList;
  final String title;
  final int commentCount;
  final int readCount;
  final int thumbUpCount;
  final User user;

  Article(this.id, this.userId, this.coverUrlList, this.title,
      this.commentCount, this.readCount, this.thumbUpCount, this.user);

  factory Article.fromJson(dynamic data) {
    return Article(
        data['id'],
        data['userId'],
        data['coverUrlList'],
        data['title'],
        data['commentCount'],
        data['readCount'],
        data['thumbUpCount'],
        User.fromJson(data['user']));
  }
}
