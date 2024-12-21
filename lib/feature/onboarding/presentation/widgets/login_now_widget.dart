import 'package:flutter/material.dart';

import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_color.dart';
import '../../../../core/utilits/app_constant.dart';
import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';

class LoginNowWidget extends StatelessWidget {
  const LoginNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        goToPage(
            context: context, pageName: AppConst.signUpRoute, remove: true);
      },
      child: Text(
        AppString.loginNow,
        style: AppStyle.poppins300wAnd16sizeBlack.copyWith(
            color: AppColor.deepBrown, decoration: TextDecoration.underline),
      ),
    );
  }
}
