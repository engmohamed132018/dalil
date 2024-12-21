import 'package:flutter/material.dart';

import '../../../../core/utilits/app_style.dart';

class TermAndConditionTextWidget extends StatelessWidget {
  const TermAndConditionTextWidget(
      {super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: AppStyle.poppins400wAnd12sizemidBrown,
          ),
          TextSpan(
            text: text2,
            style: AppStyle.poppins400wAnd12sizemidBrown
                .copyWith(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
