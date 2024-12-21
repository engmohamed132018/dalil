import 'package:flutter/material.dart';

import '../../../../core/utilits/app_size.dart';
import 'character_main_image.dart';
import 'character_main_text.dart';

class CharacterMainArticla extends StatelessWidget {
  const CharacterMainArticla(
      {super.key, required this.imgPath, required this.title});
  final String imgPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.setHeight(283),
      child: Row(
        children: [
          const CharacterMainAricalText(),
          CharacterMainArticalImage(imgPath: imgPath, title: title)
        ],
      ),
    );
  }
}
