import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:getx/app/modules/home/Utility/utility.dart';

class NeumorphicTask extends StatelessWidget {
  String taskTitle;
  String taskDetails;
  Widget child;
  NeumorphicTask(
      {this.taskTitle = 'This is Task Title',
      this.taskDetails = 'this is task details',
      required this.child,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 8.0),
      child: NeumorphicButton(
        style: mystyle,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(left: 3.0, right: 3.0),
          child: SizedBox(
            width: double.infinity,
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
                    padding: const EdgeInsets.all(7.0),
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
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: txtColor,
                      ),
                    ),
                    Text(
                      taskDetails,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(207, 100, 91, 91),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: child,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
