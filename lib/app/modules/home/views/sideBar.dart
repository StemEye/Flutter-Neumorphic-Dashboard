import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:getx/app/modules/home/Utility/utility.dart';
import 'package:getx/app/modules/home/views/neumorphic_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx/app/modules/home/views/teamMembers.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentheight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Neumorphic(
          style: mystyle,
          child: Container(
            width: 140.w,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.007,
                  left: 10.0.w),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          // horizontal: 5.0.w,
                          vertical: MediaQuery.of(context).size.height * 0.007),
                      child: Container(
                        width: 400.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.circle(),
                                lightSource: LightSource.topLeft,
                                shadowDarkColor: darkShadowClr,
                                shadowLightColor: lightShadowClr,
                                depth: 2,
                                intensity: 2.0,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.008,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.03 /
                                            2),
                                child: NeumorphicIcon(
                                  Icons.flutter_dash,
                                  size: 90.sp,
                                  style: NeumorphicStyle(
                                    color: txtColor,
                                    // shadowDarkColor: txtColor,
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(width: 8.0.w),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 0.6 / 4.5,
                              child: NeumorphicText(
                                'T O D O',
                                style: mystyle,
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 80.sp,
                                  fontWeight: FontWeight.w900,
                                  // wordSpacing: 50.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03 / 2),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.gauge,
                        size: iconSize,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Dashboard',
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03 / 2),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.chartLine,
                        size: iconSize,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Activity',
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03 / 2),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.listCheck,
                        size: iconSize,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Task',
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03 / 2),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.message,
                        size: iconSize,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Messeges',
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03 / 2),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.peopleGroup,
                        size: iconSize,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Teams',
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03 / 2),
                    NeumorphicWidget(
                      sideBarIcon: FaIcon(
                        FontAwesomeIcons.gear,
                        size: iconSize,
                        color: txtColor,
                      ),
                      sideBarTxt: 'Settings',
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03 / 2),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 16.0,
                        left: 8.0,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.03 / 5),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.055,
                          child: Row(
                            children: [
                              Text(
                                "All Members",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w700,
                                    color: txtColor,
                                    decoration: TextDecoration.none),
                              ),
                              Spacer(),
                              NeumorphicButton(
                                style: myminusdeptStyle,
                                onPressed: () {},
                                child: Text(
                                  'See all',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: txtColor,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03 / 2,
                    ),
                    TeamMembers(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03 / 2,
                    ),
                    TeamMembers(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03 / 2,
                    ),
                    TeamMembers(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03 / 2,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05 / 1.8,
                      child: Row(
                        children: [
                          Container(
                            width: 30.0.w,
                            height:
                                MediaQuery.of(context).size.height * 0.055 / 30,
                            child: Divider(
                              color: Colors.black54,
                              thickness: .8,
                              height: 0.8.h,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                            child: Text(
                              'Account',
                              style: TextStyle(
                                letterSpacing: 5.0.sp,
                                fontSize: 18, //customize size here
                                // AND others usual text style properties (fontFamily, fontWeight, ...)
                              ),
                            ),
                          ),
                          Container(
                            width: 30.0.w,
                            height:
                                MediaQuery.of(context).size.height * 0.055 / 30,
                            child: Divider(
                              color: Colors.black54,
                              thickness: .8,
                              height: 0.8.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.055 / 7,
                          bottom:
                              MediaQuery.of(context).size.height * 0.055 / 7,
                          right: 9.w),
                      child: Neumorphic(
                        style: mystyle,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.05 / 4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage:
                                      AssetImage('assets/image/ceo.jpg'),
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05 /
                                              2,
                                      width: MediaQuery.of(context).size.width *
                                          0.6 /
                                          5,
                                      child: Text(
                                        'Account Name ',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w600,
                                          color: txtColor,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'User Name',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(207, 100, 91, 91),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
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
