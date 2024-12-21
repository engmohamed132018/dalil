import 'package:flutter/material.dart';

import 'home_dalil-textwidget.dart';
import 'home_menu_icon_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MenuIconWidget(
          onTap: () {},
        ),
        const HomeDalilTextWidget()
      ],
    );
  }
}
