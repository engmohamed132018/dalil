import 'package:flutter/material.dart';

import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_size.dart';
import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';

class HomeDetailsMainArtical extends StatelessWidget {
  const HomeDetailsMainArtical({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: AppSize.setWidth(196),
          height: AppSize.setHeight(220),
          child: Text(
            AppString.detaialsArtical,
            style: AppStyle.poppins500wAnd14sizeDeepBrown
                .copyWith(color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
        customSizedBoxFromHieght(16),
      ],
    );
  }
}
