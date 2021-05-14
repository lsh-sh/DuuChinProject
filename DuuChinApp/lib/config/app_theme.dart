import 'package:duuchinapp/config/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  primaryColor: AppColors.primary, // 主题色
  scaffoldBackgroundColor: AppColors.page, // 脚手架下的页面背景色
  textTheme: TextTheme(
    bodyText2: TextStyle(
      color: AppColors.unactive, // 文字颜色
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.nav,
    selectedItemColor: AppColors.active,
    unselectedItemColor: AppColors.unactive,
    selectedLabelStyle: TextStyle(
      fontSize: 12,
    ),
  ),
);