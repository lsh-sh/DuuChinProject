import 'dart:async';

import 'package:duuchinapp/pages/root_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _currentTime = 6;
  Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      setState(() {
        _currentTime--;
        if(_currentTime <= 0){
          _jumpToHomePage();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/common/page.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),

          Positioned(
            child: InkWell(child: _chipButton(),onTap: _jumpToHomePage,),
            right: 10,
            top: MediaQuery.of(context).padding.top + 10,
          )
        ],
      ),
    );
  }

  //跳到首页
  void _jumpToHomePage() {
    _timer?.cancel();
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => RootPage()), (route) => false);
  }

  //跳过按钮
  Widget _chipButton() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5), shape: BoxShape.circle),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "跳过",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Text(
            "${_currentTime}s",
            style: TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
    );
  }
}
