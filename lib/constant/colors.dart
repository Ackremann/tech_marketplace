import 'package:flutter/material.dart';

class AppColors {
  static Color mainBackGroundColor = const Color(0xff0001FC);
  static Color textAccent1 = const Color(0xffFBDF00);
  static Color textAccent2 = const Color(0xff808BFF);
  static Gradient lightDarkGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      textAccent2,
      mainBackGroundColor,
    ],
  );
}
