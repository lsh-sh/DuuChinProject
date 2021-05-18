import 'package:duuchinapp/config/app_colors.dart';
import 'package:duuchinapp/utils/user_type.dart';
import 'package:flutter/material.dart';

class AcatarRoleName extends StatelessWidget {
  final String avatarUrl;
  final String nikeName;
  final bool showType;
  final String userType;

  const AcatarRoleName(
      {Key key,
      this.avatarUrl,
      this.nikeName = '未知',
      this.showType = false,
      this.userType = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _avatar(),
        Offstage(
          offstage: !showType,
          child: _role(),
        ),
        _nikeName()
      ],
    );
  }

  Widget _avatar() {
    return SizedBox(
      width: 25,
      height: 25,
      child: ClipOval(
        child: FadeInImage.assetNetwork(
          placeholder: "assets/images/common/lazy-1.png",
          image: avatarUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _role() {
    return Container(
      margin: EdgeInsets.only(left: 4),
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      decoration: BoxDecoration(
        color: UserType.formColor(userType),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Text(
        UserType.formCn(userType),
        style: TextStyle(fontSize: 10, color: Colors.white),
      ),
    );
  }

  Widget _nikeName() {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(left: 4),
      child: Text(
        nikeName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 12,
          color: AppColors.unactive,
        ),
      ),
    ));
  }
}
