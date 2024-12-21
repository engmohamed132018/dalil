import 'package:dalil/core/functions/function.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilits/app_assets.dart';
import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_text_onboarding.dart';
import '../widgets/on_boardingimage.dart';
import '../widgets/skip_button_widget.dart';
import '../widgets/smoothpageindecate.dart';

class OnbordingOneView extends StatelessWidget {
  const OnbordingOneView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customSizedBoxFromHieght(40),
        const SkipButtonWidget(),
        customSizedBoxFromHieght(30),
        const ONBoardImage(
          imagePath: Assets.assetsImgaesOnboardingone,
        ),
        customSizedBoxFromHieght(24),
        OnboardSmoothPageIndecator(controller: controller),
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
        customSizedBoxFromHieght(88),
        CustomButton(
            onPressed: () {
              controller.jumpToPage(1);
            },
            text: AppString.next),
      ],
    );
  }
}
