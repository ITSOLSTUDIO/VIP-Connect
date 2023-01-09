import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color green = Colors.green;
  static const Color red = Colors.red;
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;

  static const Color shimmer1 = Color(0xFF414042);
  static Color shimmer2 = Colors.grey.withOpacity(0.1);

  static const Color primary = Color(0xFF01141F);
  static const Color secondary = Color(0xFF414042);
}

ColorScheme kColorScheme = const ColorScheme.light(
  primary: AppColors.primary,
  secondary: AppColors.green,
);
