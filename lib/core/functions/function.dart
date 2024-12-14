import 'package:dalil/core/utilits/app_size.dart';
import 'package:flutter/material.dart';

import '../utilits/app_color.dart';

//! const appbar
final AppBar constAppBAr = AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
);
//! basic novigator method
Future<Object?> goToPage(
    {required BuildContext context,
    required String pageName,
    bool remove = false}) {
  if (remove == true) {
    return Navigator.of(context)
        .pushNamedAndRemoveUntil(pageName, (route) => false);
  } else {
    return Navigator.of(context).pushNamed(pageName);
  }
}

Widget customSizedBoxFromHieght(double height) {
  return SizedBox(
    height: AppSize.setHeight(height),
  );
}

Widget customSizedBoxFromWidth(double width) {
  return SizedBox(
    height: AppSize.setWidth(width),
  );
}

InputBorder customtextfieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(AppSize.setWidth(4)),
  borderSide: BorderSide(
      width: AppSize.setWidth(1), color: AppColor.ligtBlack.withOpacity(.2)),
);
