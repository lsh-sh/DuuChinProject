import 'package:duuchinapp/components/singer_card.dart';
import 'package:duuchinapp/components/song_card.dart';
import 'package:duuchinapp/http/http.dart';
import 'package:duuchinapp/models/song_model.dart';
import 'package:duuchinapp/models/user_model.dart';
import 'package:duuchinapp/services/song_service.dart';
import 'package:duuchinapp/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class SingerPage extends StatefulWidget {
  @override
  _SingerPageState createState() => _SingerPageState();
}

class _SingerPageState extends State<SingerPage> {
  List<User> _userList = [];
  int limit = 10;
  int page = 1;
  bool hasMore = false;
  bool error = false;
  String errorMsg = '';
  EasyRefreshController _easyRefreshController;

  void _getUserList({bool push = false}) async {
    try {
      Map<String, dynamic> result =
          await UserService.getUserList(page: page, limit: limit);
      List<dynamic> songList = result['data'];
      UserList userListModel = UserList.fromJson(songList);

      setState(() {
        hasMore = page * limit < result['total'];
        print("result['total']${result['total']}");
        page++;
        if (push) {
          _userList.addAll(userListModel.list);
        } else {
          _userList = userListModel.list;
        }
      });
    } catch (e) {
      setState(() {
        error = true;
        errorMsg = e.toString();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _easyRefreshController = EasyRefreshController();
  }

  Future _onRefresh() async {
    page = 1;
    await _getUserList();
    _easyRefreshController?.finishRefresh();
    _easyRefreshController?.resetLoadState();
  }

  Future _onLoad() async {
    if (hasMore) {
      await _getUserList(push: true);
    }
    print(hasMore);
    _easyRefreshController?.finishLoad(noMore: !hasMore);
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
        controller: _easyRefreshController,
        header: ClassicalHeader(),
        footer: ClassicalFooter(),
        firstRefresh: true,
        onRefresh: _onRefresh,
        onLoad: _onLoad,
        child: _bulidBody());


  }

  Widget _bulidBody(){
    return GridView.builder(
      itemCount: _userList.length,
      itemBuilder: (context, index) {
        User user = _userList[index];
        double pl = index.isEven ? 18 : 9;
        double pr = index.isEven ? 9 : 18;
        return Container(
          padding: EdgeInsets.only(top: 10, left: pl, right: pr),
          child: SingerCard(
            avatarUrl: user.coverPictureUrl,
            nikeName: user.nickname,
            musicCount: user.musicCount,
            playCount: user.musicPlayCount,
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.2),
    );
  }
}
