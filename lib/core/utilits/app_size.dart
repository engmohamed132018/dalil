import 'package:flutter/material.dart';

abstract class AppSize {
  static final Size screenSize = MediaQueryData.fromView(
          WidgetsBinding.instance.platformDispatcher.views.first)
      .size;

  static double setHeight(double height) {
    return (height / 790) * screenSize.height;
  }

  static double setWidth(double width) {
    return (width / 375) * screenSize.width;
  }

  static double setFont(double font) {
    return (font / 375) * screenSize.width;
  }
}
