import 'package:duuchinapp/models/user_model.dart';

class SongList{
  final List<Song> list;

  SongList(this.list);

  factory SongList.fromJson(List<dynamic> datas){
    return SongList(datas.map((item) => Song.fromJson(item)).toList());
  }
}


class Song {
  final int id;
  final int userId;
  final String coverPictureUrl;
  final String songUrl;
  final String cnName;
  final String enName;
  final int commentCount;
  final int thumbUpCount;
  final int readCount;
  final User user;
  Song(
      this.id,
      this.userId,
      this.coverPictureUrl,
      this.songUrl,
      this.cnName,
      this.enName,
      this.commentCount,
      this.thumbUpCount,
      this.readCount,
      this.user);

  factory Song.fromJson(dynamic data) {
    return Song(
        data['id'],
        data['userId'],
        data['coverPictureUrl'],
        data['songUrl'],
        data['cnName'],
        data['enName'],
        data['commentCount'],
        data['thumbUpCount'],
        data['readCount'],
        User.fromJson(data['user']));
  }
}
