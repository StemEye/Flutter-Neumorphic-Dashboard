// ignore_for_file: must_be_immutable

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getx/app/modules/home/Utility/utility.dart';

class NeumorphicActivity extends StatelessWidget {
  String taskTitle;
  String taskDetails;

  NeumorphicActivity(
      {this.taskTitle = 'This is Task Title',
      this.taskDetails = 'this is task details',
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.height * 0.03 / 8,
          right: MediaQuery.of(context).size.height * 0.012),
      child: Neumorphic(
        style: myminusdeptStyle,
        child: SizedBox(
          width: double.infinity,
          height: 50.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                    lightSource: LightSource.topLeft,
                    shadowDarkColor: darkShadowClr,
                    shadowLightColor: lightShadowClr,
                    depth: 3,
                    intensity: 2.0,
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: NeumorphicIcon(
                      Icons.celebration,
                      size: 27.0,
                      style: NeumorphicStyle(
                        shadowLightColor: Color.fromARGB(255, 221, 199, 199),
                        intensity: 2,
                        depth: 2,
                        color: Color.fromARGB(255, 122, 119, 119),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      taskTitle,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: txtColor,
                      ),
                    ),
                    Text(
                      taskDetails,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(207, 100, 91, 91),
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                NeumorphicButton(
                  style: mystyle,
                  child: FaIcon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.deepPurple,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
