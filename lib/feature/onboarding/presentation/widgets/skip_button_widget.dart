import 'package:dalil/core/cachHelper/cach_helper.dart';
import 'package:dalil/core/functions/function.dart';
import 'package:dalil/core/functions/get_it_setup.dart';
import 'package:dalil/core/utilits/app_constant.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
          onPressed: () async {
            await getIt<CacheHelper>()
                .saveData(key: AppConst.onBaoardingIsVisible, value: true);
            goToPage(
                context: context, pageName: AppConst.signUpRoute, remove: true);
          },
          child: Text(
            AppString.skip,
            style: AppStyle.poppins300wAnd16sizeBlack
                .copyWith(fontWeight: FontWeight.w400),
          )),
    );
  }
}
