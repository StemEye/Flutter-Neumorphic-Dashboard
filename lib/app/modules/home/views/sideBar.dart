import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:getx/app/modules/home/Utility/utility.dart';
import 'package:getx/app/modules/home/views/neumorphic_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Neumorphic(
          style: mystyle,
          child: Container(
            width: 266,
            height: 657,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Neumorphic(
                            padding: EdgeInsets.all(24.0),
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.circle(),
                              lightSource: LightSource.topLeft,
                              shadowDarkColor: darkShadowClr,
                              shadowLightColor: lightShadowClr,
                              depth: 3,
                              intensity: 2.0,
                            ),
                            child: NeumorphicIcon(
                              Icons.flutter_dash,
                              size: 60.0,
                              style: NeumorphicStyle(
                                color: txtColor,
                                // shadowDarkColor: txtColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 2.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: NeumorphicText(
                        'T O D O',
                        style: mystyle,
                        textStyle: NeumorphicTextStyle(
                          fontSize: 65.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.gauge,
                        size: 20,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Dashboard',
                    ),
                    SizedBox(height: 20.0),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.chartLine,
                        size: 20,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Activity',
                    ),
                    SizedBox(height: 20.0),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.listCheck,
                        size: 20,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Task',
                    ),
                    SizedBox(height: 15.0),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.message,
                        size: 20,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Messeges',
                    ),
                    SizedBox(height: 15.0),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.peopleGroup,
                        size: 20,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Teams',
                    ),
                    SizedBox(height: 15.0),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.gear,
                        size: 20,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Settings',
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Container(
                          width: 60.0,
                          child: Divider(
                            color: Colors.black54,
                            thickness: .8,
                            height: 0.8,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Account',
                            style: TextStyle(
                              letterSpacing: 5.0,
                              fontSize: 18, //customize size here
                              // AND others usual text style properties (fontFamily, fontWeight, ...)
                            ),
                          ),
                        ),
                        Container(
                          width: 60.0,
                          child: Divider(
                            color: Colors.black54,
                            thickness: .8,
                            height: 0.8,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0, left: 12.0),
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                lightSource: LightSource.topLeft,
                                boxShape: NeumorphicBoxShape.circle(),
                                depth: 4,
                                intensity: 4.0,
                                shadowDarkColor: darkShadowClr,
                                shadowLightColor: lightShadowClr,
                                // intensity: 10.0,
                              ),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/image/ceo.jpg'),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Neumorphic(
                            style: mystyle,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Account Name'),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
