import 'package:dalil/core/utilits/app_size.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';

class CharacterMainAricalText extends StatelessWidget {
  const CharacterMainAricalText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.setWidth(196),
      height: AppSize.setHeight(189),
      child: Text(
        AppString.characterMainText,
        style: AppStyle.poppins500wAnd14sizeDeepBrown
            .copyWith(color: Colors.black),
        overflow: TextOverflow.ellipsis,
        maxLines: 10,
      ),
    );
  }
}
