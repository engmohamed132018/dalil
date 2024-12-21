import 'package:dalil/core/utilits/app_size.dart';
import 'package:flutter/material.dart';

import 'custom_historcal_peroid_item.dart';

class CustomOptionsWidget extends StatelessWidget {
  const CustomOptionsWidget(
      {super.key,
      required this.txt1,
      required this.txt2,
      required this.imagePath1,
      required this.imagePath2});
  final String txt1;
  final String txt2;
  final String imagePath1;
  final String imagePath2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.setHeight(96),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomHomeHistoricalPeriodItem(
            text: txt1,
            imagePath: imagePath1,
          ),
          CustomHomeHistoricalPeriodItem(
            text: txt2,
            imagePath: imagePath2,
          ),
        ],
      ),
    );
  }
}
