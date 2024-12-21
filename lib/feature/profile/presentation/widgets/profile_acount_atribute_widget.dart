import 'package:flutter/material.dart';

import '../../../../core/utilits/app_color.dart';
import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';
import '../../../home/presentation/widgets/custom_title_widget.dart';
import 'profile_atribute_widget.dart';

class ProfileAcountAttributeWidget extends StatelessWidget {
  const ProfileAcountAttributeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(
          text: AppString.account,
          style: AppStyle.poppins400wAnd16sizeDeepBrown
              .copyWith(color: AppColor.grey),
        ),
        ProfileAtributeListTileWidget(
            iconData: Icons.person, title: AppString.editProfile, onTap: () {}),
        ProfileAtributeListTileWidget(
            iconData: Icons.notifications,
            title: AppString.notification,
            onTap: () {}),
      ],
    );
  }
}
