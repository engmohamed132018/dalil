import 'package:flutter/material.dart';

import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_size.dart';

class HomeDetailsMainArticalImage extends StatelessWidget {
  const HomeDetailsMainArticalImage({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customSizedBoxFromHieght(22),
        Container(
          width: AppSize.setWidth(131),
          height: AppSize.setHeight(203),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
        ),
      ],
    );
  }
}
