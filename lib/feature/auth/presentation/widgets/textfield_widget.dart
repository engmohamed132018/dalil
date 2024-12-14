import 'package:flutter/material.dart';

import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_style.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.labelText,
  });
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: AppStyle.poppins400wAnd12sizemidBrown,
        border: customtextfieldBorder,
        focusedBorder: customtextfieldBorder,
      ),
    );
  }
}
