import 'package:dalil/core/utilits/app_size.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilits/app_assets.dart';

class CustomSignInImageBannerWidget extends StatelessWidget {
  const CustomSignInImageBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          Assets.assetsImgaesPermids,
          width: AppSize.setWidth(128),
        ),
        Image.asset(
          Assets.assetsImgaesCastel,
          width: AppSize.setWidth(128),
        ),
      ],
    );
  }
}
