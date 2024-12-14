import 'package:dalil/core/utilits/app_color.dart';
import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/core/utilits/app_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyle.poppins500wAnd18sizeWhite,
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.lightBrown,
          minimumSize: Size(AppSize.setWidth(343), AppSize.setHeight(56)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
