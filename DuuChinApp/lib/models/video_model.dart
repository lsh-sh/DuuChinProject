import 'package:duuchinapp/models/user_model.dart';

class VideoList {
  final List<Video> list;

  const VideoList(this.list);

  factory VideoList.fromJson(List<dynamic> datas) =>
      VideoList(datas.map((item) => Video.fromJson(item)).toList());
}

class Video {
  final int id;
  final int userId;
  final String coverPictureUrl;
  final String title;
  final String intro;
  final String videoUrl;
  final int commentCount;
  final int contentSeconds;
  final int readCount;
  final int shareCount;
  final int thumbUpCount;
  final User user;

  Video(
      this.id,
      this.userId,
      this.coverPictureUrl,
      this.title,
      this.intro,
      this.videoUrl,
      this.commentCount,
      this.contentSeconds,
      this.readCount,
      this.shareCount,
      this.thumbUpCount,
      this.user);

  factory Video.fromJson(dynamic data) {
    return Video(
        data['id'],
        data['userId'],
        data['coverPictureUrl'],
        data['title'],
        data['intro'],
        data['videoUrl'],
        data['commentCount'],
        data['contentSeconds'],
        data['readCount'],
        data['shareCount'],
        data['thumbUpCount'],
        User.fromJson(data['user']));
  }
}
