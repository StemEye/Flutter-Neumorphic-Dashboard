import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx/app/modules/home/Utility/utility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeumorphicWidget extends StatelessWidget {
  FaIcon sideBarIcon;
  String sideBarTxt;
  NeumorphicWidget(
      {this.sideBarIcon = const FaIcon(FontAwesomeIcons.gauge),
      required this.sideBarTxt,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0.w),
      child: NeumorphicButton(
        onPressed: () {},
        style: mystyle,
        child: Row(
          children: [
            sideBarIcon,
            SizedBox(
              width: 10.0.w,
            ),
            Text(
              sideBarTxt,
              style: TextStyle(color: txtColor),
            ),
          ],
        ),
      ),
    );
  }
}
