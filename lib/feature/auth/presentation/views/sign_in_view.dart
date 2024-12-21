import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/feature/auth/presentation/widgets/custom_sign_in_form_widget.dart';
import 'package:dalil/feature/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/functions/function.dart';
import '../widgets/custom_sign_in_banner.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: CustomSignInBannerWidget(),
          ),
          SliverToBoxAdapter(
            child: customSizedBoxFromHieght(32),
          ),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(
              text: AppString.welcomeBack,
            ),
          ),
          SliverToBoxAdapter(
            child: customSizedBoxFromHieght(16),
          ),
          const SliverToBoxAdapter(child: CustomSignInFormWidget()),
        ],
      ),
    );
  }
}
