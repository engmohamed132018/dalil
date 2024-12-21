import 'package:firebase_auth/firebase_auth.dart';

void authStateChangeFunction() {
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      // ignore: avoid_print
      print('User is currently signed out!');
    } else {
      // ignore: avoid_print
      print('User is signed in!');
    }
  });
}
