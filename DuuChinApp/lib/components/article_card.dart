import 'package:duuchinapp/components/avatar_role_name.dart';
import 'package:duuchinapp/components/comment_like_read.dart';
import 'package:duuchinapp/config/app_colors.dart';
import 'package:duuchinapp/models/article_model.dart';
import 'package:duuchinapp/models/user_model.dart';
import 'package:duuchinapp/utils/util.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  final double paddingSize = 20;
  final double spacingSize = 10;
  double boxSize = 0;

  ArticleCard({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    boxSize = MediaQuery.of(context).size.width - paddingSize * 2;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: AppColors.page,width: 8))),
      padding: EdgeInsets.all(paddingSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Title(),
          SizedBox(height: spacingSize),
          _cover(),
          SizedBox(height: spacingSize),
          _bttom()
        ],
      ),
    );
  }

  Widget Title() {
    return Text(
      article.title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(color: Colors.black, fontSize: 16),
    );
  }

  Widget _cover() {
    int coverType = getCoverTypeFromLength(article.coverUrlList.length);
    switch(coverType){
      case 1:
        return _coverType1();
      case 2:
        return _coverType2();
      case 3:
        return _coverType3();
      case 4:
        return _coverType4();
      case 5:
        return _coverType5();
      case 6:
        return _coverType6();
      case 7:
        return _coverType7();
      case 8:
        return _coverType8();
    }
}

  int getCoverTypeFromLength(int length) {
    switch (length) {
      case 1:
        return 1;
      case 2:
        return getRangeRandomInt(2, 3);
      case 3:
        return getRangeRandomInt(4, 7);
      case 4:
        return 8;
    }
  }

  Widget _coverType1() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: FadeInImage.assetNetwork(
        placeholder: "assets/images/common/lazy-1.png",
        image: article.coverUrlList[0],
        fit: BoxFit.cover,
        width: boxSize,
        height: boxSize,
      ),
    );
  }

  Widget _coverType2() {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/common/lazy-3.png",
              image: article.coverUrlList[0],
              fit: BoxFit.cover,
              width: boxSize / 2 - 5,
              height: boxSize,
            )),
        SizedBox(width: spacingSize),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/common/lazy-3.png",
              image: article.coverUrlList[1],
              fit: BoxFit.cover,
              width: boxSize / 2 - 5,
              height: boxSize,
            ))
      ],
    );
  }

  Widget _coverType3() {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/common/lazy-2.png",
              image: article.coverUrlList[0],
              fit: BoxFit.cover,
              width: boxSize / 2 - 5,
              height: boxSize,
            )),
        SizedBox(height: spacingSize),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/common/lazy-2.png",
              image: article.coverUrlList[1],
              fit: BoxFit.cover,
              width: boxSize,
              height: boxSize / 2 - 5,
            ))
      ],
    );
  }

  Widget _coverType4() {
    return Row(
      children: [
        Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[0],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                )),
            SizedBox(height: spacingSize),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[1],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                ))
          ],
        ),
        SizedBox(width: spacingSize),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/common/lazy-3png",
              image: article.coverUrlList[2],
              fit: BoxFit.cover,
              width: boxSize / 2 - 5,
              height: boxSize,
            ))
      ],
    );
  }

  Widget _coverType5() {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[0],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                )),
            SizedBox(width: spacingSize),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[1],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                ))
          ],
        ),
        SizedBox(height: spacingSize),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/common/lazy-2png",
              image: article.coverUrlList[2],
              fit: BoxFit.cover,
              width: boxSize,
              height: boxSize / 2 - 5,
            ))
      ],
    );
  }

  Widget _coverType6() {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/common/lazy-3png",
              image: article.coverUrlList[0],
              fit: BoxFit.cover,
              width: boxSize / 2 - 5,
              height: boxSize,
            )),
        SizedBox(width: spacingSize),
        Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[1],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                )),
            SizedBox(height: spacingSize),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[2],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                ))
          ],
        )
      ],
    );
  }

  Widget _coverType7() {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "assets/images/common/lazy-2png",
              image: article.coverUrlList[0],
              fit: BoxFit.cover,
              width: boxSize,
              height: boxSize / 2 - 5,
            )),
        SizedBox(height: spacingSize),
        Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[1],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                )),
            SizedBox(width: spacingSize),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[2],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                ))
          ],
        )
      ],
    );
  }

  Widget _coverType8() {
    return Row(
      children: [
        Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[1],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                )),
            SizedBox(height: spacingSize),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[2],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                ))
          ],
        ),
        SizedBox(width: spacingSize),
        Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[1],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                )),
            SizedBox(height: spacingSize),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: "assets/images/common/lazy-1.png",
                  image: article.coverUrlList[2],
                  fit: BoxFit.cover,
                  width: boxSize / 2 - 5,
                  height: boxSize / 2 - 5,
                ))
          ],
        )
      ],
    );
  }

  Widget _bttom() {
    User user = article.user;
    return Row(
      children: [
        Expanded(
            child: AcatarRoleName(
          avatarUrl: user?.coverPictureUrl,
          nikeName: user?.nickname,
          showType: true,
          userType: user?.type,
        )),
        Expanded(
            child: CommentLikeRead(
          commentCount: article.commentCount,
          likeCount: article.thumbUpCount,
          readCount: article.readCount,
        ))
      ],
    );
  }
}
