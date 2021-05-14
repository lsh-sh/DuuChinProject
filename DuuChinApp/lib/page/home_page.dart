import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  Map<String, String> _bottomNavNames = {
    "home": "首页",
    "music": "音乐",
    "create_media": "",
    "tiny_video": "小视频",
    "profile": "我的"
  };
  List<BottomNavigationBarItem> _bottomNavItems = [];

  @override
  void initState() {
    super.initState();
    _bottomNavNames.forEach((key, value) {
      _bottomNavItems.add(_bottomNavItem(key, value));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("首页"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavItems,
        onTap: _onTapClicked,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButton: _createMediaButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _createMediaButton() {
    return Container(
      width: 44,
      height: 44,
      margin: EdgeInsets.only(top: 56),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Image.asset(
          "assets/images/icons/create_media.png",
        ),
      ),
    );
  }

  //生存底部导航栏的条目
  BottomNavigationBarItem _bottomNavItem(String key, String value) {
    return BottomNavigationBarItem(
        icon: Image.asset(
          "assets/images/icons/$key.png",
          width: 24,
          height: 24,
        ),
        activeIcon: Image.asset(
          "assets/images/icons/${key}_active.png",
          width: 24,
          height: 24,
        ),
        label: value);
  }

  void _onTapClicked(index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
