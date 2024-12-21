import 'package:dalil/core/utilits/app_color.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CutomIconvisiblePasswordWidget extends StatefulWidget {
  const CutomIconvisiblePasswordWidget({super.key});

  @override
  State<CutomIconvisiblePasswordWidget> createState() =>
      _CutomTextfieldIconWidgetState();
}

class _CutomTextfieldIconWidgetState
    extends State<CutomIconvisiblePasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          BlocProvider.of<AuthCubit>(context).setPasswordVisibilty();
        });
      },
      child: BlocProvider.of<AuthCubit>(context).passwordIsVisible
          ? const Icon(Icons.visibility_off, color: AppColor.lightGrey)
          : const Icon(Icons.visibility, color: Colors.blueAccent),
    );
  }
}
