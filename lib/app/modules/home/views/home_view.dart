import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:get/get.dart';
import 'package:getx/app/modules/home/responsive/desktop_body.dart';
import 'package:getx/app/modules/home/responsive/mobile_body.dart';
import 'package:getx/app/shared/responsive_layout.dart';
import 'package:getx/app/modules/home/responsive/tablet_body.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobilebody: MobileBody(),
      tabletbody: TabletBody(),
      desktopbody: DesktopBody(),
    );
  }
}
