import 'dart:math';

import 'package:flutter/material.dart';

/**
 * [size] 设计图上的大小
 *
 * [width] 设计图的宽
 */
double toRpx(BuildContext context, {int size = 0, int width = 750}) {
  final scale = MediaQuery.of(context).size.width / width;
  return scale * size;
}

String formatCharCount(int count) {
  if (count == null || count <= 0 || count.isNaN) {
    return '0';
  }

  String strCount = count.toString();
  if (count >= 10000) {
    strCount = (count / 10000).toString() + 'w';
    if (strCount.split('.')[1].length > 2) {
      strCount = strCount.substring(0, strCount.length - 4) + 'w';
    }
  } else if (count >= 1000) {
    strCount = (count / 1000).toString() + 'k';
    if (strCount.split('.')[1].length > 2) {
      strCount = strCount.substring(0, strCount.length - 3) + 'k';
    }
  }
  return strCount;
}

int getRangeRandomInt(int min,int max){
  final Random random = Random();
  return min + random.nextInt(max + 1 - min);
}
