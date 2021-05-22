import 'package:duuchinapp/http/http.dart';
import 'package:flutter/material.dart';

class VideoService {
  static const String rootPath = '/api/video';
  static const String listPath = '$rootPath/list';
  static const String infoPath = '$rootPath/info';

  static Future getVideoList({int page = 1, int limit = 5}) async {
    final response =
        await Http.post(listPath, data: {"page": page, "limit": limit});
    final Map<String, dynamic> result = response['page'];
    return result;
  }
}
