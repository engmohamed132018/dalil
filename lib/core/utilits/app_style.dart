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
  static final TextStyle poppins500wAnd14sizeDeepBrown = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w500,
    fontSize: AppSize.setFont(14),
    color: AppColor.deepBrown,
  );
  static final TextStyle poppinsw400wAnd14sizemidBrown = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w400,
    fontSize: AppSize.setFont(14),
    color: AppColor.midBrown,
  );
  static final TextStyle poppinsw400wAnd20sizeDeepBrown = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w400,
    fontSize: AppSize.setFont(20),
    color: AppColor.deepBrown,
  );
  static final TextStyle poppinsw400wAnd10sizeMidBrown = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w400,
    fontSize: AppSize.setFont(10),
    color: AppColor.midBrown,
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
  static final TextStyle poppins400wAnd12sizeLightGrey = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w400,
    fontSize: AppSize.setFont(12),
    color: AppColor.lightGrey,
  );
  static final TextStyle poppins400wAnd16sizeDeepBrown = TextStyle(
    fontFamily: AppString.poppinsFont,
    fontWeight: FontWeight.w400,
    fontSize: AppSize.setFont(16),
    color: AppColor.deepBrown,
  );
  static final TextStyle saira700wAnd32sizeWhite = TextStyle(
    fontFamily: AppString.pacificoFont,
    fontWeight: FontWeight.w700,
    fontSize: AppSize.setFont(32),
    color: Colors.white,
  );
}
