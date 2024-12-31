import 'package:dalil/core/functions/function.dart';

import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/core/utilits/app_string.dart';

import 'package:flutter/material.dart';

import '../../../auth/presentation/widgets/welcome_text_widget.dart';
import '../widgets/profile_acount_atribute_widget.dart';
import '../widgets/profile_general_attribute_widget.dart';
import '../widgets/profile_heater_account_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.setWidth(16)),
      child: CustomScrollView(
        slivers: <Widget>[
         
          _buildSizedBox(24),
          const SliverToBoxAdapter(
              child: Center(child: WelcomeTextWidget(text: AppString.profile))),
          _buildSizedBox(24),
          const SliverToBoxAdapter(child: ProfileHeaderAcountWidget()),
          _buildSizedBox(32),
          const SliverToBoxAdapter(child: ProfileAcountAttributeWidget()),
          _buildSizedBox(24),
          const SliverToBoxAdapter(child: ProfileGeneralAttributeWidget()),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildSizedBox(double height) {
    return SliverToBoxAdapter(
      child: customSizedBoxFromHieght(height),
    );
  }
}


