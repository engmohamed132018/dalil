import 'package:flutter/material.dart';

extension SizePasring on num {
  double get toHeight =>
      (this / 790) *
      MediaQueryData.fromView(
              WidgetsBinding.instance.platformDispatcher.views.first)
          .size
          .height;

  double get toWidth =>
      (this / 375) *
      MediaQueryData.fromView(
              WidgetsBinding.instance.platformDispatcher.views.first)
          .size
          .width;

  // static double setFont(double font) {
  //   return (font / 375) * screenSize.width;
  // }
}
