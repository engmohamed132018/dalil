import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_color.dart';
import '../../../../core/utilits/app_constant.dart';
import '../../../../core/utilits/app_string.dart';
import '../../../../core/utilits/app_style.dart';
import '../../../home/presentation/widgets/custom_title_widget.dart';
import 'profile_atribute_widget.dart';

class ProfileGeneralAttributeWidget extends StatelessWidget {
  const ProfileGeneralAttributeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //!general text
        CustomHeaderText(
          text: AppString.general,
          style: AppStyle.poppins400wAnd16sizeDeepBrown
              .copyWith(color: AppColor.grey),
        ),
        //!settings
        ProfileAtributeListTileWidget(
            iconData: Icons.settings, title: AppString.settings, onTap: () {}),
        //!
        ProfileAtributeListTileWidget(
            iconData: Icons.lock, title: AppString.security, onTap: () {}),
        //!notification
        ProfileAtributeListTileWidget(
            iconData: Icons.shield_moon,
            title: AppString.notification,
            onTap: () {}),
        //!logOut
        ProfileAtributeListTileWidget(
            iconData: Icons.login,
            title: AppString.logOut,
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              goToPage(
                  context: context,
                  pageName: AppConst.signInRoute,
                  remove: true);
            }),
      ],
    );
  }
}
