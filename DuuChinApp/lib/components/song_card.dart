import 'package:duuchinapp/config/app_colors.dart';
import 'package:duuchinapp/models/song_model.dart';
import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final Song song;

  const SongCard({Key key, this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(top: BorderSide(color: Colors.black.withOpacity(0.1)))),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [_songCover(),
          SizedBox(width: 8),
          _songContent()],
      ),
    );
  }

  Widget _songCover() {
    return SizedBox(
      width: 75,
      height: 75,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
                placeholder: "assets/images/common/lazy-1.png",
                image: song.coverPictureUrl),
          ),
          Center(
            child: Image.asset(
              "assets/images/icons/tiny_video.png",
              width: 22,
              height: 22,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _songContent() {
    return Expanded(
        child: SizedBox(
      height: 75,
      child: Stack(
        children: [
          Text(
            song.cnName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: AppColors.active, fontSize: 16),
          ),
          Positioned(
              child: Text(
                song.enName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: AppColors.un3active, fontSize: 14),
              ),
              top: 25)
        ],
      ),
    ));
  }
}
