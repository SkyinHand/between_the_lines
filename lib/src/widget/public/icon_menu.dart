/// FileName: icon_menu
/// Author: admin
/// Date: 2021-06-10 16:53
/// Description:

import 'package:flutter/material.dart';
import 'package:flutter_between_the_lines/src/service/utils/style_kits.dart';

import 'icon_menu_item.dart';

class IconMenu extends StatelessWidget {

  IconMenu({ required this.iconList });

  final List<IconMenuItem> iconList;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: EdgeInsets.all(StyleKits.px(10)),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(StyleKits.px(5.5)),
        child: IntrinsicHeight(
            child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.spaceBetween,
          children: this.iconList,
        )),
      ),
    );
  }
}
