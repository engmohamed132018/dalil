import 'package:dalil/core/utilits/app_constant.dart';
import 'package:dalil/feature/auth/presentation/views/sign_up_view.dart';
import 'package:dalil/feature/onboarding/presentation/views/on_boarding_view.dart';
import 'package:dalil/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppConst.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppConst.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case AppConst.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}
