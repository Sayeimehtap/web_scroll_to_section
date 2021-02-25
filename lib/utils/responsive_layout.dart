import "package:flutter/material.dart";

class ResponsiveLayout extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  const ResponsiveLayout(
      {Key key, @required this.desktop, this.tablet, this.mobile})
      : super(key: key);

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1000;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          return desktop;
        } else if (constraints.maxWidth <= 1000 &&
            constraints.maxWidth >= 800) {
          return tablet ?? desktop;
        } else {
          return mobile ?? desktop;
        }
      },
    );
  }
}
