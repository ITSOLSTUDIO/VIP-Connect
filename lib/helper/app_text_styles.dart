import 'package:flutter/material.dart';

import '../constants.dart';
import 'app_colors.dart';

class AppTextStyle {
  static final TextStyle h3 = TextStyle(
    fontFamily: 'Rubik',
    fontSize: kFontSize24,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryText,
  );

  static final TextStyle bodyMedium = TextStyle(
    fontFamily: 'Rubik',
    fontSize: kFontSize16,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static final TextStyle bodyRegular = TextStyle(
    fontFamily: 'Rubik',
    fontSize: kFontSize16,
    fontWeight: FontWeight.w400,
    color: AppColors.button,
  );
}
