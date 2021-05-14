import 'package:duuchinapp/config/app_theme.dart';
import 'package:duuchinapp/page/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '读琴',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home:SplashPage(),
    );
  }
}
