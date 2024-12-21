import 'package:flutter/material.dart';

void delayNavigation(
    {required BuildContext context, required String pageName}) {
  Future.delayed(const Duration(seconds: 2), () {
    Navigator.pushReplacementNamed(context, pageName);
  });
}
