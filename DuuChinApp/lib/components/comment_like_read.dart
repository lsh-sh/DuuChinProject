import 'package:duuchinapp/components/icon_text.dart';
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
        IconText(icon: 'assets/images/icons/comment.png',text: formatCharCount(commentCount)),
        IconText(icon: 'assets/images/icons/like.png',text: formatCharCount(likeCount)),
        IconText(icon: 'assets/images/icons/read.png',text: formatCharCount(readCount)),
      ],
    );
  }
}
