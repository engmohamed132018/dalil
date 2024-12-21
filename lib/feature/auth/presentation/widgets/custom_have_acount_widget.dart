import 'package:flutter/material.dart';

import '../../../../core/utilits/app_style.dart';

class CustomeHaveAnAccountWidget extends StatelessWidget {
  const CustomeHaveAnAccountWidget(
      {super.key, required this.text, this.onTap, required this.buttonText});
  final String text;
  final String buttonText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyle.poppins400wAnd12sizemidBrown,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            buttonText,
            style: AppStyle.poppins400wAnd12sizeLightGrey,
          ),
        )
      ],
    );
  }
}
