import 'package:duuchinapp/config/app_colors.dart';
import 'package:flutter/material.dart';

class UserType {
  // 用户类型对照
  static Map typeEn = {
    'NORMAL_USER': 'NORMAL_USER',
    'DQ_SINGER': 'DQ_SINGER',
    'DQ_OFFICIAL_ACCOUNT': 'DQ_OFFICIAL_ACCOUNT',
    'ADMIN': 'ADMIN'
  };
  // 中文对照
  static Map typeCn = {
    'NORMAL_USER': '普通用户',
    'DQ_SINGER': '读琴歌手',
    'DQ_OFFICIAL_ACCOUNT': '读亲号',
    'ADMIN': '管理员'
  };
  // 颜色对照
  static Map typeColor = {
    'NORMAL_USER': AppColors.un3active,
    'DQ_SINGER': AppColors.info,
    'DQ_OFFICIAL_ACCOUNT': AppColors.danger,
    'ADMIN': AppColors.success
  };

  // 用户英文对照
  static String formEn(String userType) {
    return typeEn[userType];
  }

  // 用户中文对照
  static String formCn(String userType) {
    return typeCn[userType] ?? '未知';
  }

  // 用户颜色对照
  static Color formColor(String userType) {
    return typeColor[userType] ?? AppColors.un3active;
  }

  // 是否是普通用户
  static bool isNormalUser(String userType) => userType == typeEn['NORMAL_USER'];

  // 是否是读亲歌手
  static bool isDqSinger(String userType)  => userType == typeEn['DQ_SINGER'];

  // 是否是读亲号
  static bool isDqOfficialAccount(String userType) => userType == typeEn['DQ_OFFICIAL_ACCOUNT'];

  // 是否是管理员
  static bool isAdmin(String userType) => userType == typeEn['ADMIN'];
}