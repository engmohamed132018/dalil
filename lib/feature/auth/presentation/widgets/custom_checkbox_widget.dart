import 'package:dalil/core/utilits/app_size.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utilits/app_color.dart';

class CustomeCheckBoxWidget extends StatefulWidget {
  const CustomeCheckBoxWidget({super.key});

  @override
  State<CustomeCheckBoxWidget> createState() => _CustomeCheckBoxWidgetState();
}

class _CustomeCheckBoxWidgetState extends State<CustomeCheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: BlocProvider.of<AuthCubit>(context).termAndConditionCheckBoxValue,
      onChanged: (newvalue) {
        setState(() {
          BlocProvider.of<AuthCubit>(context)
              .setTermAndConditionCheckBoxValue(newvalue!);
        });
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.setWidth(4))),
      side: const BorderSide(color: AppColor.lightBrown),
    );
  }
}
