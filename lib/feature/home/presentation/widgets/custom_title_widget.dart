import 'package:dalil/core/utilits/app_style.dart';
import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyle.poppinsw400wAnd20sizeDeepBrown,
    );
  }
}
