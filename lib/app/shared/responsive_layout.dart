import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobilebody;
  final Widget tabletbody;
  final Widget desktopbody;

  ResponsiveLayout({
    required this.mobilebody,
    required this.tabletbody,
    required this.desktopbody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobilebody;
        } else if (constraints.maxWidth > 600 && constraints.maxWidth <= 1100 ||
            constraints.maxHeight < 632) {
          return tabletbody;
        } else {
          return desktopbody;
        }
      },
    );
  }
}
