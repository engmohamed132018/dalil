import 'package:dalil/core/functions/function.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_signup_form_widget.dart';
import '../widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customSizedBoxFromHieght(152),
            const WelcomeTextWidget(text: AppString.welcome),
            customSizedBoxFromHieght(24),
            const CustomSignUpFormWidget(),
          ],
        ),
      ),
    );
  }
}
