import 'package:duuchinapp/components/avatar_role_name.dart';
import 'package:duuchinapp/components/comment_like_read.dart';
import 'package:duuchinapp/models/video_model.dart';
import 'package:flutter/material.dart';

class TinyVideoCard extends StatelessWidget {
  final Video video;

  TinyVideoCard({Key key, this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _cover(),
        SizedBox(height: 10),
        _nikeName(),
        SizedBox(height: 10),
        _bottom()
      ],
    );
  }

  Widget _cover() {
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/common/lazy-3.png",
              image: video?.coverPictureUrl,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/icons/tiny_video.png",
              width: 38,
              height: 38,
              color: Colors.white,
            ),
          )
        ],
      ),
    );

//    return SizedBox(
//      child: ClipRRect(
//        borderRadius: BorderRadius.circular(10),
//        child: Stack(
//          fit: StackFit.expand,
//          children: [
//            AspectRatio(
//              aspectRatio: 9 / 16,
//              child: FadeInImage.assetNetwork(
//                placeholder: "assets/images/common/lazy-3.png",
//                image: video?.coverPictureUrl,
//                fit: BoxFit.cover,
//              ),
//            ),
//            Center(
//              child: Image.asset(
//                "assets/images/icons/tiny_video.png",
//                width: 38,
//                height: 38,
//                color: Colors.white,
//              ),
//            )
//          ],
//        ),
//      ),
//    );
////    return Stack(
//      children: [
//        ClipRRect(
//          borderRadius: BorderRadius.circular(10),
//          child: AspectRatio(
//            aspectRatio: 9 / 16,
//            child: FadeInImage.assetNetwork(
//              placeholder: "assets/images/common/lazy-3.png",
//              image: video?.coverPictureUrl,
//              fit: BoxFit.cover,
//            ),
//          ),
//        ),
//        Align(
//          alignment: Alignment.center,
//          child: Image.asset(
//            "assets/images/icons/tiny_video.png",
//            width: 38,
//            height: 38,
//            color: Colors.white,
//          ),
//        )
//      ],
//    );
  }

  Widget _nikeName() {
    return AcatarRoleName(
      avatarUrl: video?.user?.coverPictureUrl,
      nikeName: video?.user?.nickname,
      showType: true,
      userType: video?.user?.type,
    );
  }

  Widget _bottom() {
    return CommentLikeRead(
      commentCount: video?.commentCount,
      likeCount: video?.thumbUpCount,
      readCount: video?.readCount,
    );
  }
}
