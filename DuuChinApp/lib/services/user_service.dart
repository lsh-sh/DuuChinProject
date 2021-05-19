import 'package:duuchinapp/http/http.dart';
import 'package:flutter/material.dart';

class UserService {
  static const String rootPath = '/api/user';
  static const String listPath = '$rootPath/list';
  static const String infoPath = '$rootPath/info';

  static Future getUserList({int page = 1, int limit = 5,String userType}) async {
    final response =
        await Http.post(listPath, data: {"page": page, "limit": limit,"type":userType});
    final Map<String, dynamic> result = response['page'];
    return result;
  }
}
