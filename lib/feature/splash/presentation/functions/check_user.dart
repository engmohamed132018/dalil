import 'package:dalil/core/cachHelper/cach_helper.dart';
import 'package:dalil/core/functions/get_it_setup.dart';
import 'package:dalil/core/utilits/app_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'delay_route_function.dart';

void checkUserAndVisiablity(BuildContext context) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final bool check =
      await getIt<CacheHelper>().getData(key: AppConst.onBaoardingIsVisible) ??
          false;
  if (check) {
    if (_auth.currentUser != null && _auth.currentUser!.emailVerified) {
      delayNavigation(context: context, pageName: AppConst.homeMainviewRoute);
    } else {
      delayNavigation(context: context, pageName: AppConst.signInRoute);
    }
  } else {
    delayNavigation(context: context, pageName: AppConst.onBoardingRoute);
  }
}
