import 'package:duuchinapp/components/icon_text.dart';
import 'package:duuchinapp/config/app_colors.dart';
import 'package:duuchinapp/utils/util.dart';
import 'package:flutter/material.dart';

class SingerCard extends StatelessWidget {
  final String avatarUrl;
  final String nikeName;
  final int musicCount;
  final int playCount;

  const SingerCard(
      {Key key, this.avatarUrl, this.nikeName, this.musicCount, this.playCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1 / 1,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/common/lazy-1.png",
                image: avatarUrl,
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Text(
            nikeName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16, color: AppColors.active),
          ),
        ),
        Row(
          children: [
            IconText(
              icon: 'assets/images/icons/music.png',
              text: '歌曲:' + formatCharCount(musicCount),
              fontSize: 13,
            ),
            IconText(
              icon: 'assets/images/icons/read.png',
              text: '播放:' + formatCharCount(playCount),
              fontSize: 13,
            ),
          ],
        )
      ],
    );
  }
}
