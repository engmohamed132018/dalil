import 'package:flutter/material.dart';

import '../../../../core/utilits/app_style.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: AppStyle.poppins500wAnd24sizeBalck,
      ),
    );
  }
}
