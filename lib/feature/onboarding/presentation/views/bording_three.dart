import 'package:dalil/core/cachHelper/cach_helper.dart';
import 'package:dalil/core/functions/get_it_setup.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_assets.dart';
import '../../../../core/utilits/app_constant.dart';
import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_text_onboarding.dart';
import '../widgets/login_now_widget.dart';
import '../widgets/on_boardingimage.dart';
import '../widgets/smoothpageindecate.dart';

class OnbordingThreeView extends StatelessWidget {
  const OnbordingThreeView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customSizedBoxFromHieght(96),
        const ONBoardImage(
          imagePath: Assets.assetsImgaesOnboardingone,
        ),
        customSizedBoxFromHieght(24),
        onboardSmoothPageIndecator(controller: controller),
        customSizedBoxFromHieght(30),
        CustomOnbordingtext(
          text: AppString.onboardin1Title,
          style: AppStyle.poppins500wAnd24sizeBalck,
        ),
        customSizedBoxFromHieght(16),
        CustomOnbordingtext(
          text: AppString.onboardin1SubTitle,
          style: AppStyle.poppins300wAnd16sizeBlack,
        ),
        customSizedBoxFromHieght(55),
        CustomButton(
            onPressed: () {
              getIt<CacheHelper>()
                  .saveData(key: AppConst.onBaoardingIsVisible, value: true);
              goToPage(
                  context: context,
                  pageName: AppConst.signUpRoute,
                  remove: true);
            },
            text: AppString.createAccount),
        customSizedBoxFromHieght(16),
        const LoginNowWidget(),
        customSizedBoxFromHieght(16),
      ],
    );
  }
}
