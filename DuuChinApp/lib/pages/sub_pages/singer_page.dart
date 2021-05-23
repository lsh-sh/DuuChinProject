import 'package:duuchinapp/components/singer_card.dart';
import 'package:duuchinapp/config/app_colors.dart';
import 'package:duuchinapp/models/user_model.dart';
import 'package:duuchinapp/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class SingerPage extends StatefulWidget {
  @override
  _SingerPageState createState() => _SingerPageState();
}

class _SingerPageState extends State<SingerPage>
    with AutomaticKeepAliveClientMixin {
  List<User> _userList = [];
  int limit = 10;
  int page = 1;
  bool hasMore = true;
  bool error = false;
  String errorMsg = '';
  EasyRefreshController _easyRefreshController;

  void _getUserList({bool push = false}) async {
    try {
      Map<String, dynamic> result =
          await UserService.getUserList(page: page, limit: limit);
      List<dynamic> userList = result['data'];
      UserList userListModel = UserList.fromJson(userList);

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
    _getUserList(push: true);
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
    _easyRefreshController?.finishLoad(noMore: !hasMore);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return EasyRefresh(
        controller: _easyRefreshController,
        header: ClassicalHeader(),
        footer: ClassicalFooter(),
        onRefresh: _onRefresh,
        onLoad: _onLoad,
        child: _bulidBody());
  }

  Widget _bulidBody() {
    return GridView.builder(
      itemCount: _userList.length,
      itemBuilder: (context, index) {
        User user = _userList[index];
        double pl = index.isEven ? 18 : 9;
        double pr = index.isEven ? 9 : 18;
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: AppColors.page,width: 8))),
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
          crossAxisCount: 2, childAspectRatio: 1 / 1.25),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
