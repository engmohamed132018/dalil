import 'package:dalil/core/utilits/app_color.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/core/utilits/app_size.dart';
import 'package:flutter/material.dart';

abstract class AppStyle {
  static final TextStyle pacifico400wAnd64sizeDeepBrown = TextStyle(
    fontFamily: AppString.pacificoFont,
    fontWeight: FontWeight.w400,
    fontSize: AppSize.setFont(64),
    color: AppColor.deepBrown,
  );

  static final TextStyle poppins500wAnd24sizeBalck = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w500,
    fontSize: AppSize.setFont(24),
    color: Colors.black,
  );
  static final TextStyle poppins300wAnd16sizeBlack = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w300,
    fontSize: AppSize.setFont(16),
    color: Colors.black,
  );
  static final TextStyle poppins500wAnd18sizeWhite = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w500,
    fontSize: AppSize.setFont(18),
    color: Colors.white,
  );
  static final TextStyle poppins400wAnd12sizemidBrown = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w400,
    fontSize: AppSize.setFont(12),
    color: AppColor.midBrown,
  );
}
