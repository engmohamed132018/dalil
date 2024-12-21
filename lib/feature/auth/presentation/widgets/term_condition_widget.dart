import 'package:flutter/material.dart';

import '../../../../core/utilits/app_string.dart';
import 'term_condition_text_widget.dart';
import 'custom_checkbox_widget.dart';

class CustomTermAndConditionWidget extends StatelessWidget {
  const CustomTermAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomeCheckBoxWidget(),
        TermAndConditionTextWidget(
            text1: AppString.ihaveAgreetoOur,
            text2: AppString.termsAndCondition),
      ],
    );
  }
}
