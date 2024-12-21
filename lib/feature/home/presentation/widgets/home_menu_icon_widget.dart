import 'package:flutter/material.dart';

import '../../../../core/utilits/app_color.dart';

class MenuIconWidget extends StatelessWidget {
  const MenuIconWidget({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Icon(
        Icons.menu,
        color: AppColor.deepBrown,
        size: 24,
      ),
    );
  }
}
