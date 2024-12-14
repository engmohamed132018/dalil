import 'package:dalil/core/functions/function.dart';
import 'package:dalil/core/utilits/app_color.dart';
import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/core/utilits/app_style.dart';
import 'package:flutter/material.dart';

import '../widgets/textfield_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            customSizedBoxFromHieght(108),
            Text(
              AppString.welcome,
              style: AppStyle.poppins500wAnd24sizeBalck,
            ),
            const CustomTextFieldWidget(
              labelText: AppString.fristName,
            ),
            const CustomTextFieldWidget(
              labelText: AppString.lastName,
            ),
            const CustomTextFieldWidget(
              labelText: AppString.emailAddress,
            ),
            const CustomTextFieldWidget(
              labelText: AppString.paswword,
            ),
          ],
        ),
      ),
    );
  }
}
