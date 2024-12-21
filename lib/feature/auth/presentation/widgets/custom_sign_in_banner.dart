import 'package:dalil/feature/auth/presentation/widgets/custom_signin_imagebanner.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilits/app_color.dart';
import '../../../../core/utilits/app_size.dart';
import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';

class CustomSignInBannerWidget extends StatelessWidget {
  const CustomSignInBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.setHeight(290),
      color: AppColor.primaryBrown,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppString.dalil,
            style: AppStyle.saira700wAnd32sizeWhite,
          ),
          const CustomSignInImageBannerWidget(),
        ],
      ),
    );
  }
}
