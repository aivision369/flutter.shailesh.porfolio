import 'dart:ui';

import 'package:flutter/material.dart';

class AppScrollBehavior extends MaterialScrollBehavior{

  @override
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}