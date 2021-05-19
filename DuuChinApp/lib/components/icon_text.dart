import 'package:duuchinapp/config/app_colors.dart';
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final String icon;
  final String text;
  final double fontSize;
  final double iconSize;
  final Color textColor;
  final double iconTextSpacing;

  const IconText(
      {Key key,
      this.icon,
      this.text,
      this.iconTextSpacing = 2,
      this.fontSize = 12,
      this.iconSize = 16,
      this.textColor = AppColors.un3active})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        Image.asset(
          icon,
          width: iconSize,
          height: iconSize,
        ),
        SizedBox(width: iconTextSpacing),
        Expanded(
            child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ))
      ],
    ));
  }
}
