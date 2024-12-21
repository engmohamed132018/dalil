import 'package:flutter/material.dart';

import '../../../../core/utilits/app_assets.dart';
import '../../../../core/utilits/app_size.dart';
import '../../../../core/utilits/app_string.dart';

class CharacterMainArticalImage extends StatelessWidget {
  const CharacterMainArticalImage(
      {super.key, required this.imgPath, required this.title});
  final String imgPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.setHeight(283),
      width: AppSize.setWidth(160 - 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.setWidth(16)),
        child: Image.asset(title == AppString.salAdin
            ? Assets.assetsImgaesSoltanBig
            : imgPath),
      ),
    );
  }
}
