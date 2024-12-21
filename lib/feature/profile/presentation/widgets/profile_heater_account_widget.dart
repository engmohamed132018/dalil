import 'package:flutter/material.dart';

import '../../../../core/utilits/app_assets.dart';
import '../../../../core/utilits/app_color.dart';
import '../../../../core/utilits/app_size.dart';
import '../../../../core/utilits/app_style.dart';
import '../../../home/presentation/widgets/custom_title_widget.dart';

class ProfileHeaderAcountWidget extends StatelessWidget {
  const ProfileHeaderAcountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
      leading: CircleAvatar(
        backgroundImage: const AssetImage(Assets.assetsImgaesNapoleon),
        radius: AppSize.setWidth(32),
      ),
      title: CustomHeaderText(text: 'yousf Ahmed'),
      subtitle: Text(
        'yousefAhmed@gmail.com',
        style: AppStyle.poppins500wAnd18sizeWhite
            .copyWith(color: AppColor.grey, fontSize: AppSize.setFont(16)),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: InkWell(
        onTap: () {},
        child: Icon(
          Icons.edit,
          color: AppColor.grey,
          size: AppSize.setWidth(24),
        ),
      ),
    );
  }
}
