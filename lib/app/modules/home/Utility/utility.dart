import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Color txtColor = Color.fromARGB(255, 51, 51, 51);

Color lightShadowClr = Color.fromARGB(255, 236, 235, 235).withOpacity(0.85);
Color darkShadowClr = Colors.black38;

NeumorphicStyle mystyle = NeumorphicStyle(
  lightSource: LightSource.topLeft,
  shadowDarkColor: darkShadowClr,
  shadowLightColor: lightShadowClr,
  depth: 3,
  intensity: 2.0,
);

NeumorphicStyle myminusdeptStyle = NeumorphicStyle(
  lightSource: LightSource.topLeft,
  shadowDarkColor: darkShadowClr,
  shadowLightColor: lightShadowClr,
  depth: -3,
  intensity: 2.0,
);
