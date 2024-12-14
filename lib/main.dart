import 'package:dalil/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

import 'core/functions/app_route.dart';

void main() {
  runApp(Dalil(
    appRoute: AppRoute(),
  ));
}

class Dalil extends StatelessWidget {
  const Dalil({
    super.key,
    required this.appRoute,
  });
  final AppRoute appRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoute.onGenerateRoute,
      //home: SplashView(),
    );
  }
}
