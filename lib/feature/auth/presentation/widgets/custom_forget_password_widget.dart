import 'package:flutter/material.dart';

import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';

// ignore: must_be_immutable
class CustomForegetPasswordWidget extends StatelessWidget {
  CustomForegetPasswordWidget({super.key, this.onTap});
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            AppString.forgotPassword,
            style: AppStyle.poppins400wAnd12sizemidBrown
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
