import 'package:flutter/material.dart';

class CustomOnbordingtext extends StatelessWidget {
  const CustomOnbordingtext({
    super.key,
    required this.text,
    required this.style,
  });
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: TextAlign.center,
    );
  }
}
