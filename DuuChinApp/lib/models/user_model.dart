class User {
  final int id;
  final String coverPictureUrl;
  final String nickname;
  final String type;
  final int musicCount;
  final int musicPlayCount;

  User(this.id,
      this.coverPictureUrl,
      this.nickname,
      this.type,
      this.musicCount,
      this.musicPlayCount);


  factory User.fromJson(dynamic data){
    return User(data['id'],
        data['coverPictureUrl'],
        data['nickname'],
        data['type'],
        data['musicCount'],
        data['musicPlayCount']);
  }
}
