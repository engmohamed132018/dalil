import 'package:dalil/core/functions/function.dart';
import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/feature/onboarding/presentation/views/bording_three.dart';
import 'package:dalil/feature/onboarding/presentation/views/onboarding_one_view.dart';
import 'package:dalil/feature/onboarding/presentation/views/onbording_two.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: constAppBAr,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.setWidth(14)),
        child: PageView(
          controller: controller,
          children: [
            OnbordingOneView(controller: controller),
            OnbordingTwoView(controller: controller),
            OnbordingThreeView(controller: controller),
          ],
        ),
      ),
    );
  }
}
