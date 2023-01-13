import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_text_styles.dart';

import '../../helper/app_colors.dart';

class CommonButton extends StatelessWidget {
  final String title, iconData;
  final bool isFill, isIconVisible;
  final Color? iconColor, textColor, borderColor;
  final void Function() onPressed;
  bool buttonShouldDisable = false;

  CommonButton({
    Key? key,
    this.iconColor,
    this.textColor,
    this.borderColor,
    required this.title,
    required this.iconData,
    required this.isFill,
    required this.isIconVisible,
    required this.onPressed,
    required this.buttonShouldDisable,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 56.h)),
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: 22.w, vertical: 11.h),
        ),
        //Fixed Size set
        // fixedSize: MaterialStateProperty.all( Size(double.infinity,48)),
        backgroundColor: isFill
            ? (buttonShouldDisable)
                ? MaterialStateProperty.all(AppColors.disableButton)
                : MaterialStateProperty.all(AppColors.button)
            : MaterialStateProperty.all(AppColors.secondary),
        splashFactory: buttonShouldDisable ? NoSplash.splashFactory : null,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius20),
            side: BorderSide(
              color: isFill
                  ? (buttonShouldDisable)
                      ? AppColors.disableButton
                      : borderColor ?? AppColors.button
                  : borderColor ?? AppColors.primary,
            ),
          ),
        ),
        //minimumSize: MaterialStateProperty.all(Size(double.infinity, 48.h)),
      ),
      onPressed: buttonShouldDisable ? () {} : onPressed,
      child: Row(
        mainAxisAlignment: isIconVisible
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyle.bodyMedium.copyWith(
              color: buttonShouldDisable
                  ? AppColors.disableText
                  : textColor ?? AppColors.primary,
            ),
          ),
          isIconVisible
              ? Image.asset(
                  iconData,
                  color:
                      buttonShouldDisable ? AppColors.disableText : iconColor,
                  height: 24.h,
                  width: 24.w,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
