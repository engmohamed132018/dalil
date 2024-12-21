import 'package:dalil/core/utilits/app_constant.dart';
import 'package:dalil/feature/auth/presentation/cubit/auth_cubit.dart';
import 'package:dalil/feature/auth/presentation/views/forget_password_view.dart';
import 'package:dalil/feature/auth/presentation/views/sign_in_view.dart';
import 'package:dalil/feature/auth/presentation/views/sign_up_view.dart';
import 'package:dalil/feature/home/data/model/historical_carachter_model.dart';
import 'package:dalil/feature/home/presentation/cubit/home_cubit.dart';
import 'package:dalil/feature/home/presentation/view/character_view.dart';
import 'package:dalil/feature/home/presentation/view/home_details_view.dart';
import 'package:dalil/feature/home/presentation/view/main_home_view.dart';
import 'package:dalil/feature/onboarding/presentation/views/on_boarding_view.dart';
import 'package:dalil/feature/search/presentation/cubit/search_cubit.dart';
import 'package:dalil/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  Route? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppConst.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppConst.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case AppConst.homeDetailsViewRoute:
        if (setting.arguments is DataModel) {
          return MaterialPageRoute(
              builder: (_) => HomeDetailsView(
                    dataModel: setting.arguments as DataModel,
                  ));
        }
      case AppConst.characterviewRoute:
        if (setting.arguments is DataModel) {
          return MaterialPageRoute(
              builder: (_) => CharacterView(
                    dataModel: setting.arguments as DataModel,
                  ));
        }
      case AppConst.signUpRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: const SignUpView(),
                ));
      case AppConst.signInRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: const SignInView(),
                ));
      case AppConst.forgetPassordRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => AuthCubit(),
                  child: const ForgetPasswordView(),
                ));
      case AppConst.homeMainviewRoute:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => HomeCubit(),
                    ),
                    BlocProvider(
                      create: (context) => SearchCubit(),
                    ),
                  ],
                  child: HomeMainView(),
                ));

      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
    return null;
  }
}
