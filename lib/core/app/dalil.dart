import 'package:flutter/material.dart';

import '../functions/app_route.dart';

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
