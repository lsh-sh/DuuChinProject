import 'package:duuchinapp/config/app_colors.dart';
import 'package:duuchinapp/utils/util.dart';
import 'package:flutter/material.dart';

class CommentLikeRead extends StatelessWidget {
  final int commentCount;
  final int likeCount;
  final int readCount;

  const CommentLikeRead(
      {Key key, this.commentCount = 0, this.likeCount = 0, this.readCount = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _iconText('assets/images/icons/comment.png', commentCount),
        _iconText('assets/images/icons/like.png', likeCount),
        _iconText('assets/images/icons/read.png', readCount),
      ],
    );
  }

  Widget _iconText(String icon, int count) {
    return Expanded(
        child: Row(
      children: [
        Image.asset(
          icon,
          width: 18,
          height: 18,
        ),
        Expanded(
            child: Text(
          formatCharCount(count),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 12,
            color: AppColors.un3active,
          ),
        ))
      ],
    ));
  }
}
