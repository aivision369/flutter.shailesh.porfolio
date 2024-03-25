import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  ResponsiveLayout({Key? key,
        required this.largeScreen,
        this.mediumScreen,
        this.smallScreen})
      : super(key: key);

  final Widget largeScreen;
  Widget? mediumScreen;
  Widget? smallScreen;

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 300;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 300 &&
        MediaQuery.of(context).size.width < 600;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if (constraints.maxWidth > 800) {
            return widget.largeScreen;
          } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
            return widget.mediumScreen ?? widget.largeScreen;
          } else {
            return widget.smallScreen ?? widget.largeScreen;
          }
        });
  }
}
