import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getx/app/modules/home/Utility/utility.dart';
import 'package:getx/app/modules/home/views/activity.dart';
import 'package:getx/app/modules/home/views/neumorphicTask.dart';
import 'package:getx/app/modules/home/views/teamStatus.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 657,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 10.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      NeumorphicIcon(
                        Icons.add_circle,
                        size: 40,
                        style: NeumorphicStyle(
                          shadowLightColor: lightShadowClr,
                          intensity: 4,
                          depth: 4.0,
                          color: Color.fromARGB(255, 209, 204, 204),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      NeumorphicIcon(
                        Icons.notifications,
                        size: 40,
                        style: NeumorphicStyle(
                          shadowLightColor: lightShadowClr,
                          intensity: 4,
                          depth: 4.0,
                          color: Color.fromARGB(255, 209, 204, 204),
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/image/ceo.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        lightSource: LightSource.topLeft,
                        shadowDarkColor: darkShadowClr,
                        shadowLightColor: darkShadowClr,
                        depth: -3,
                        intensity: 1.0,
                      ),
                      child: Container(
                        height: 255.0,
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SfCalendar(
                            showNavigationArrow: true,
                            cellBorderColor: Color.fromARGB(255, 139, 163, 204),
                            view: CalendarView.month,
                            // blackoutDates: <DateTime>[
                            //   DateTime.now().add(Duration(days: 2)),
                            //   DateTime.now().add(Duration(days: 3)),
                            //   DateTime.now().add(Duration(days: 6)),
                            //   DateTime.now().add(Duration(days: 7))
                            // ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16.0,
                      left: 8.0,
                    ),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "Today's Activity",
                            style: TextStyle(
                                fontSize: 16.0,
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
                  SizedBox(
                    height: 15.0,
                  ),
                  NeumorphicActivity(),
                  SizedBox(
                    height: 9.0,
                  ),
                  NeumorphicActivity(),
                  SizedBox(
                    height: 11.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16.0,
                      left: 8.0,
                    ),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            "Team Status",
                            style: TextStyle(
                                fontSize: 16.0,
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
                  SizedBox(
                    height: 10.0,
                  ),
                  CarouselSlider(
                    items: [
                      NeumorphicTeam(),
                      NeumorphicTeam(),
                      NeumorphicTeam(),
                      NeumorphicTeam(),
                    ],
                    options: CarouselOptions(
                      height: 50.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      // aspectRatio: 8 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
