import 'package:dalil/core/cachHelper/cach_helper.dart';
import 'package:dalil/core/functions/get_it_setup.dart';
import 'package:flutter/material.dart';

import 'core/app/dalil.dart';
import 'core/functions/app_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/functions/auth_state_changes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  authStateChangeFunction();
  setUpGetItServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(Dalil(
    appRoute: AppRoute(),
  ));
}
