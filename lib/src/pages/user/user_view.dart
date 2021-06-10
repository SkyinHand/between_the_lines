import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/core/theme/theme_main.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import '../../widget/public/paper_tip.dart';
import 'package:get/get.dart';

import 'user_logic.dart';
import 'user_state.dart';

class UserPage extends StatelessWidget {
  final UserLogic ssssslogic = Get.put(UserLogic());
  final UserState state = Get.find<UserLogic>().state;

  @override
  Widget build(BuildContext context) {
    PageHeaderTip _buildPageHeaderTip() => PageHeaderTip(
          title: 'Hi, Stranger',
          subtitle: 'What is your name?',
          child: Image.network(
              'https://tupian.qqw21.com/article/UploadPic/2018-9/201891216514211450.jpg'),
        );

    Container _buildTopBar() => Container(
      padding: EdgeInsets.only(right: StyleKits.px(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          IconButton(onPressed: (){print('点击了更多');}, icon: Icon(Icons.more_vert))
        ],
      ),
    );

    /// 构建用户头部，包括Avatar, Nickname, Introduction
    Container _buildUserHeaderContainer() => Container(
      height: StyleKits.px(256),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: StyleKits.px(40),
            backgroundImage: NetworkImage('https://uploadfile.bizhizu.cn/up/25/8a/a2/258aa2ed6193f0ed78f78b490f476e43.jpg'),
          ),
          SizedBox(height: StyleKits.px(8),),
          Text(
            'HELENA WINTER',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: StyleKits.px(18)
            ),
          ),
          SizedBox(height: StyleKits.px(10),),
          Text(
            'UI/UX and Product Designer',
            style: TextStyle(
              color: ThemeMain.colorTextSub,
              fontSize: StyleKits.px(14)
            ),
          ),
        ],
      ),
    );

    return ListView(
      children: [
        // _buildPageHeaderTip()
        _buildTopBar(),
        SizedBox(height: StyleKits.px(12.5),),
        _buildUserHeaderContainer(),
      ],
    );
  }
}
