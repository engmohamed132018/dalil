import 'package:flutter/material.dart';

import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';

class HomeDalilTextWidget extends StatelessWidget {
  const HomeDalilTextWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      AppString.dalil,
      style: AppStyle.pacifico400wAnd64sizeDeepBrown.copyWith(fontSize: 22),
    );
  }
}
