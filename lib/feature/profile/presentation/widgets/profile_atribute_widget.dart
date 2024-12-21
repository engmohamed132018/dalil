import 'package:flutter/material.dart';

import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_color.dart';
import '../../../../core/utilits/app_size.dart';
import '../../../../core/utilits/app_style.dart';

class ProfileAtributeListTileWidget extends StatelessWidget {
  const ProfileAtributeListTileWidget(
      {super.key,
      required this.iconData,
      required this.title,
      required this.onTap});
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        customSizedBoxFromHieght(8),
        ListTile(
          onTap: onTap,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          leading: Icon(
            iconData,
            color: AppColor.deepBrown,
            size: AppSize.setWidth(24),
          ),
          title: Text(
            title,
            style: AppStyle.poppins400wAnd16sizeDeepBrown,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: AppSize.setWidth(24),
          ),
        ),
        customSizedBoxFromHieght(8),
        Divider(
          color: AppColor.midBrown.withOpacity(.1),
        ),
      ],
    );
  }
}
