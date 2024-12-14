import 'package:dalil/core/utilits/app_constant.dart';
import 'package:dalil/core/utilits/app_string.dart';
import 'package:dalil/core/utilits/app_style.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppConst.onBoardingRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppString.dalil,
          style: AppStyle.pacifico400wAnd64sizeDeepBrown,
        ),
      ),
    );
  }
}
