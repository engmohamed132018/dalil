import 'package:flutter/material.dart';

import '../../../../core/utilits/app_assets.dart';
import '../../../../core/utilits/app_size.dart';

class ForgetPasswordImageWidget extends StatelessWidget {
  const ForgetPasswordImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.assetsImgaesForgetPassword,
      width: AppSize.setWidth(235),
      height: AppSize.setHeight(235),
    );
  }
}
