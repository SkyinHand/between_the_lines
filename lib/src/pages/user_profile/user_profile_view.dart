import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_between_the_lines/src/core/theme/theme_main.dart';
import 'package:flutter_between_the_lines/src/service/helper/evaluation_introduction.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';
import 'package:flutter_between_the_lines/src/widget/public/evaluation_card.dart';
import 'package:get/get.dart';

import 'user_profile_logic.dart';
import 'user_profile_state.dart';

class UserProfilePage extends StatelessWidget {
  final UserProfileLogic logic = Get.put(UserProfileLogic());
  final UserProfileState state = Get.find<UserProfileLogic>().state;



  @override
  Widget build(BuildContext context) {
    List<Widget> _buildActions() => <Widget>[
          IconButton(
            onPressed: () {
              print('点击了更多');
            },
            icon: Icon(
              Icons.more_horiz,
              color: ThemeMain.userBarWhite,
            ),
          )
        ];

    Widget _buildSliverAppBar() => SliverAppBar(
          expandedHeight: StyleKits.screenH() * 1.75 / 3,
          actions: _buildActions(),
          elevation: 0,
          pinned: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
          flexibleSpace: FlexibleSpaceBar(
            // 伸展处布局
            collapseMode: CollapseMode.parallax,
            // background: Image.network(
            //   'https://uploadfile.bizhizu.cn/up/25/8a/a2/258aa2ed6193f0ed78f78b490f476e43.jpg',
            //   fit: BoxFit.cover,
            // ),
          ),
        );

    Widget _buildProfileBoxIntroduction() => Padding(
          padding: EdgeInsets.all(StyleKits.px(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '南风微凉',
                style: TextStyle(
                    fontSize: StyleKits.px(30),
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: StyleKits.px(12.5),
              ),
              Text(
                '山东理工大学计算机科学与技术学院',
                style: TextStyle(
                    fontSize: StyleKits.px(12.5), color: Colors.white),
              )
            ],
          ),
        );

    Widget _buildProfileEvaluationCard() => EvaluationCard(
          evaluationData: [
            EvaluationIntroduction(content: '125', introduction: '作品'),
            EvaluationIntroduction(content: '250', introduction: '粉丝'),
            EvaluationIntroduction(content: '1256', introduction: 'TA的关注'),
          ],
          backgroundColor: Colors.transparent,
          titleColor: Colors.white,
          subtitleColor: ThemeMain.colorTextSub,
        );

    Widget _buildFollowButton() => Material(
          color: Colors.transparent,
          child: Ink(
            decoration: BoxDecoration(
              color: Color.fromRGBO(100, 120, 211, 1.00),
              borderRadius: BorderRadius.all(Radius.circular(StyleKits.px(50))),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.all(Radius.circular(StyleKits.px(50))),
              child: Container(
                width: double.infinity,
                height: StyleKits.px(45),
                child: Center(
                  child: Text(
                    '关注TA',
                    style: TextStyle(
                        color: Colors.white, fontSize: StyleKits.px(16)),
                  ),
                ),
              ),
            ),
          ),
        );

    Widget _buildProfileBox() => SliverToBoxAdapter(
            child: Container(
          alignment: AlignmentDirectional.topStart,
          padding: EdgeInsets.all(StyleKits.px(25)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(StyleKits.px(50)),
              topRight: Radius.circular(StyleKits.px(50)),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 15.0),
                  blurRadius: 15.0,
                  spreadRadius: 5.0),
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0.0, 20.0),
                  blurRadius: 25.0,
                  spreadRadius: 15.0)
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileBoxIntroduction(),
              _buildProfileEvaluationCard(),
              _buildFollowButton()
            ],
          ),
        ));

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                'https://c-ssl.duitang.com/uploads/item/201809/30/20180930212927_huohk.thumb.1000_0.jpg',
                //'https://uploadfile.bizhizu.cn/up/25/8a/a2/258aa2ed6193f0ed78f78b490f476e43.jpg',
              ),
              fit: BoxFit.cover)),
      child: CustomScrollView(
        slivers: [_buildSliverAppBar(), _buildProfileBox()],
      ),
    ));
  }
}
