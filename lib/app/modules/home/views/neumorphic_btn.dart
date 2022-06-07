import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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
      padding: const EdgeInsets.only(right: 8.0),
      child: NeumorphicButton(
        onPressed: () {},
        style: mystyle,
        child: Row(
          children: [
            sideBarIcon,
            SizedBox(
              width: 15.0,
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
