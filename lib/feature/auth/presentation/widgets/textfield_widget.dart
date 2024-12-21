import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/function.dart';
import '../../../../core/utilits/app_style.dart';
import 'custom_visible_password_icon_widget.dart';

// ignore: must_be_immutable
class CustomTextFieldWidget extends StatelessWidget {
  CustomTextFieldWidget({super.key, required this.labelText, this.onChanged});
  final String labelText;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: AppSize.setHeight(24),
          left: AppSize.setWidth(16),
          right: AppSize.setWidth(16)),
      child: TextFormField(
        onChanged: onChanged,
        validator: _buildValidate,
        obscureText: _oscuretext(context),
        decoration: InputDecoration(
          suffixIcon: _buildSuffixIcon(context),
          labelText: labelText,
          labelStyle: AppStyle.poppins400wAnd12sizemidBrown,
          border: customtextfieldBorder,
          focusedBorder: customtextfieldBorder,
        ),
      ),
    );
  }

  bool _oscuretext(context) {
    if (labelText == AppString.paswword) {
      return BlocProvider.of<AuthCubit>(context, listen: true)
          .passwordIsVisible;
    } else {
      return false;
    }
  }

  Widget? _buildSuffixIcon(BuildContext context) {
    if (labelText == AppString.paswword) {
      return const CutomIconvisiblePasswordWidget();
    } else {
      return null;
    }
  }

  String? _buildValidate(String? value) {
    if (value!.isEmpty) {
      return 'this field is required';
    } else {
      return null;
    }
  }
}
