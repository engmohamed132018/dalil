// ignore_for_file: must_be_immutable

import 'package:dalil/core/utilits/app_style.dart';
import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  CustomHeaderText({super.key, required this.text, this.style});
  final String text;
  TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppStyle.poppinsw400wAnd20sizeDeepBrown,
    );
  }
}
