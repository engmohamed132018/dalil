import 'package:flutter/material.dart';

import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_assets.dart';
import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_text_onboarding.dart';
import '../widgets/on_boardingimage.dart';
import '../widgets/skip_button_widget.dart';
import '../widgets/smoothpageindecate.dart';

class OnbordingTwoView extends StatelessWidget {
  const OnbordingTwoView({
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
          imagePath: Assets.assetsImgaesOnboarding2,
        ),
        customSizedBoxFromHieght(24),
        onboardSmoothPageIndecator(controller: controller),
        customSizedBoxFromHieght(30),
        CustomOnbordingtext(
          text: AppString.onboardin2Title,
          style: AppStyle.poppins500wAnd24sizeBalck,
        ),
        customSizedBoxFromHieght(16),
        CustomOnbordingtext(
          text: AppString.onboardin2SubTitle,
          style: AppStyle.poppins300wAnd16sizeBlack,
        ),
        customSizedBoxFromHieght(88),
        CustomButton(
            onPressed: () {
              controller.jumpToPage(2);
            },
            text: AppString.next),
      ],
    );
  }
}
