/// FileName: icon_menu_item
/// Author: admin
/// Date: 2021-06-10 16:57
/// Description:

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

class IconMenuItem extends StatelessWidget {


  IconMenuItem({ required this.iconLink, required this.title });

  final String iconLink;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: StyleKits.px(5.0)),
      child: Material(
        color: Colors.transparent,
        child: Ink(
          child: InkWell(
            onTap: () {},
            child: Container(
              width: StyleKits.px(70),
              height: StyleKits.px(90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Padding(
                  //   padding: EdgeInsets.all(StyleKits.px(18)),
                  //   child: ClipOval(
                  //     child: Image.asset(
                  //         this.iconLink),
                  //   ),
                  // ),
                  Container(
                    height: StyleKits.px(32),
                    width: StyleKits.px(32),
                    margin: EdgeInsets.only(top: StyleKits.px(18.0), bottom: StyleKits.px(10.0)),
                    child: ClipOval(
                      child: Image.asset(
                          this.iconLink),
                    ),
                  ),
                  Text(
                    this.title,
                    style: TextStyle(fontSize: StyleKits.px(12.5), overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
