// ignore_for_file: unused_import

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getx/app/modules/home/Utility/utility.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:getx/app/modules/home/views/neumorphicTask.dart';

class MiddleColumn extends StatelessWidget {
  const MiddleColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: .0),
      child: Container(
        width: 770,
        height: 657,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 30.0),
                      child: Neumorphic(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('DASHBOARD'),
                        ),
                        style: mystyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 30.0),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          lightSource: LightSource.topLeft,
                          shadowDarkColor: darkShadowClr,
                          shadowLightColor: lightShadowClr,
                          depth: 3,
                          intensity: 2.0,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(25)),
                        ),
                        child: SizedBox(
                          width: 580,
                          height: 50.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: IconButton(
                                      splashRadius: 30.0,
                                      onPressed: () {},
                                      icon: FaIcon(
                                        FontAwesomeIcons.arrowRight,
                                        size: 20,
                                      )),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 12.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.magnifyingGlass,
                                    color: txtColor,
                                    size: 20.0,
                                  ),
                                ),
                                hintText: 'Search',
                                contentPadding:
                                    EdgeInsets.only(left: 28.0, top: 17),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Neumorphic(
                style: mystyle,
                child: CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/image/marketing.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("assets/image/sale.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tasks',
                      style: TextStyle(fontSize: 14.0, color: txtColor),
                    ),
                    NeumorphicButton(
                      onPressed: () {},
                      style: mystyle,
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.plus,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Add Tasks',
                            style: TextStyle(fontSize: 14.0, color: txtColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 20.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    lightSource: LightSource.topLeft,
                    shadowDarkColor: darkShadowClr,
                    shadowLightColor: lightShadowClr,
                    depth: 3,
                    intensity: 2.0,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: IconButton(
                            splashRadius: 30.0,
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.arrowRight,
                              size: 20,
                            ),
                          ),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 12.0),
                          child: FaIcon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: txtColor,
                            size: 20.0,
                          ),
                        ),
                        hintText: 'Search',
                        contentPadding: EdgeInsets.only(
                          left: 28.0,
                          top: 17,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              NeumorphicTask(
                taskTitle: 'This is First Task Title',
                taskDetails: 'This is task description',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/ceo.jpg'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              NeumorphicTask(
                taskTitle: 'This is Second Task Title',
                taskDetails: 'This is task description',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/ceo.jpg'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              NeumorphicTask(
                taskTitle: 'This is Third Task Title',
                taskDetails: 'This is task description',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/ceo.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
