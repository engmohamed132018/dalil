import 'package:dalil/core/utilits/app_color.dart';
import 'package:dalil/core/utilits/app_size.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardSmoothPageIndecator extends StatelessWidget {
  const OnboardSmoothPageIndecator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.setWidth(47),
      height: AppSize.setHeight(6),
      child: SmoothPageIndicator(
          controller: controller, // PageController
          count: 3,
          effect: const ExpandingDotsEffect(
              activeDotColor: AppColor.deepBrown), // your preferred effect
          onDotClicked: (index) {}),
    );
  }
}
