import 'package:duuchinapp/config/app_colors.dart';
import 'package:flutter/material.dart';

class RootPageHader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/common/logo.png",
          height: 40,
        ),
        Expanded(child: _searchContent()),
        Image.asset(
          "assets/images/icons/msg.png",
          height: 30,
        )
      ],
    );
  }

  Widget _searchContent() {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30)),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 2),
            child: Icon(
              Icons.search,
              size: 16,
              color: AppColors.un2active,
            ),
          ),
          Text(
            "精确搜索",
            style: TextStyle(fontSize: 12, color: AppColors.un2active),
          )
        ],
      ),
    );
  }
}
