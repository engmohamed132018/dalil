import 'package:flutter/material.dart';

import '../../../../core/functions/function.dart';
import 'home_datils_main.imge.dart';
import 'home_details_main_artical_text.dart';

class CustomDetailsMainArticalWidget extends StatelessWidget {
  const CustomDetailsMainArticalWidget({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeDetailsMainArtical(),
        customSizedBoxFromWidth(16),
        HomeDetailsMainArticalImage(
          img: img,
        )
      ],
    );
  }
}
