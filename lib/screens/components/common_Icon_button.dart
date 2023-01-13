import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vip_connect/constants.dart';

import '../../helper/app_colors.dart';

class CommonIconButton extends StatelessWidget {
  final String svgData;
  final bool isFill;
  final Color iconColor;
  final double? height, width;
  final void Function() onPressed;

  CommonIconButton({
    Key? key,
    required this.svgData,
    required this.isFill,
    required this.iconColor,
    this.height,
    this.width,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
            Size(width ?? double.infinity, height ?? 56.h)),
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: 22.w, vertical: 11.h),
        ),
        //Fixed Size set
        // fixedSize: MaterialStateProperty.all( Size(double.infinity,48)),
        backgroundColor: isFill
            ? MaterialStateProperty.all(AppColors.button)
            : MaterialStateProperty.all(AppColors.secondary),
        splashFactory: NoSplash.splashFactory,
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius20),
            side: BorderSide(
              color: isFill ? AppColors.button : AppColors.primary,
            ),
          ),
        ),
        //minimumSize: MaterialStateProperty.all(Size(double.infinity, 48.h)),
      ),
      onPressed: onPressed,
      child: SvgPicture.asset(
        svgData,
        height: 24.h,
        width: 24.w,
      ),
    );
  }
}
