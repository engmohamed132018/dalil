// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAgZVSdwVJQp54Y_AJW5jOaShVawKe-H2w',
    appId: '1:1072152277914:web:d2e89c7c1be82e5c4c0023',
    messagingSenderId: '1072152277914',
    projectId: 'dalil-3cea5',
    authDomain: 'dalil-3cea5.firebaseapp.com',
    storageBucket: 'dalil-3cea5.firebasestorage.app',
    measurementId: 'G-MQ167P797H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDLtJFu57RJBMLJkqzsSsg7PxBlJXSLp9A',
    appId: '1:1072152277914:android:b6c4c2d5ed9adb6e4c0023',
    messagingSenderId: '1072152277914',
    projectId: 'dalil-3cea5',
    storageBucket: 'dalil-3cea5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB34qgNIMoYP9--tzpFMn4y265qUbXORT0',
    appId: '1:1072152277914:ios:d871294aac61838c4c0023',
    messagingSenderId: '1072152277914',
    projectId: 'dalil-3cea5',
    storageBucket: 'dalil-3cea5.firebasestorage.app',
    iosBundleId: 'com.example.dalil',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB34qgNIMoYP9--tzpFMn4y265qUbXORT0',
    appId: '1:1072152277914:ios:d871294aac61838c4c0023',
    messagingSenderId: '1072152277914',
    projectId: 'dalil-3cea5',
    storageBucket: 'dalil-3cea5.firebasestorage.app',
    iosBundleId: 'com.example.dalil',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAgZVSdwVJQp54Y_AJW5jOaShVawKe-H2w',
    appId: '1:1072152277914:web:2c76c58dbaf567434c0023',
    messagingSenderId: '1072152277914',
    projectId: 'dalil-3cea5',
    authDomain: 'dalil-3cea5.firebaseapp.com',
    storageBucket: 'dalil-3cea5.firebasestorage.app',
    measurementId: 'G-7VMX9LEEYD',
  );
}
