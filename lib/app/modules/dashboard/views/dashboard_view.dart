import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/shared/responsive_layout.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ResponsiveLayout(
          mobilebody: Container(child: Text("Mobile View")),
          tabletbody: Container(child: Text("Tablet View")),
          desktopbody: desktopBodyView(),
        ),
      ),
    );
  }

  Widget desktopBodyView() {
    return Container(
      width: Get.width,
      child: Row(
        children: [
          Expanded(flex: 30, child: leftView()),
          VerticalDivider(
            color: Colors.black,
            thickness: 2,
          ),
          Expanded(flex: 50, child: middleView()),
          VerticalDivider(
            color: Colors.black,
            thickness: 2,
          ),
          Expanded(flex: 20, child: rightView())
        ],
      ),
    );
  }

  leftView() {
    return Container(child: Text("LEft View"));
  }

  middleView() {
    return Container(child: Text("Middle View"));
  }

  rightView() {
    return Container(child: Text("Right View"));
  }
}
