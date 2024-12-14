import 'package:flutter/material.dart';

import '../../../../core/utilits/app_size.dart';

class ONBoardImage extends StatelessWidget {
  const ONBoardImage({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
      width: AppSize.setWidth(343),
      height: AppSize.setHeight(290),
    );
  }
}
