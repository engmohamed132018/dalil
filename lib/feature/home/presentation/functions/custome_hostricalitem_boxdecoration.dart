import 'package:flutter/material.dart';

BoxDecoration customeHIstoricalPerioditemDesign() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
            blurRadius: 5,
            color: Colors.black38,
            offset: Offset(0, 5),
            spreadRadius: 0),
      ]);
}
