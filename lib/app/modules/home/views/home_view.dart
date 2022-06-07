import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:get/get.dart';
import 'package:getx/app/modules/home/views/middleCoulmn.dart';
import 'package:getx/app/modules/home/views/rightSideBar.dart';
import 'package:getx/app/modules/home/views/sideBar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color.fromARGB(255, 209, 204, 204),
        // accentColor: Colors.green,
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      home: Container(
        color: Color.fromARGB(255, 209, 204, 204),
        child: Row(
          children: [SideBar(), MiddleColumn(), RightSideBar()],
        ),
      ),
    );
  }
}
