import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getx/app/modules/home/Utility/utility.dart';

class TeamMembers extends StatelessWidget {
  String taskTitle;

  TeamMembers({this.taskTitle = 'This is Task Title', Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Neumorphic(
        style: mystyle,
        child: SizedBox(
          width: double.infinity,
          // height: 45.0,
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    radius: 13,
                    backgroundImage: AssetImage('assets/image/ceo.jpg'),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Team member Name',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: txtColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
