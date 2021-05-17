
import 'package:flutter/material.dart';
/**
 * [size] 设计图上的大小
 *
 * [width] 设计图的宽
 */
double toRpx(BuildContext context,{int size = 0,int width = 750}){
  final scale = MediaQuery.of(context).size.width / width;
  return scale * size;
}