import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondary,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpacer(height: 22.h),
              Text(
                AppTexts.profile,
                style: AppTextStyle.h3.copyWith(
                  fontSize: kFontSize20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white300,
                ),
              ),
              VerticalSpacer(height: 12.h),
              Text(
                AppTexts.account.toUpperCase(),
                style: AppTextStyle.bodyMedium.copyWith(
                  fontSize: kFontSize14,
                  color: AppColors.white300.withOpacity(0.5),
                ),
              ),
              VerticalSpacer(height: 16.h),
              VerticalSpacer(height: 12.h),
              Text(
                AppTexts.other.toUpperCase(),
                style: AppTextStyle.bodyMedium.copyWith(
                  fontSize: kFontSize14,
                  color: AppColors.white300.withOpacity(0.5),
                ),
              ),
              VerticalSpacer(height: 16.h),
              CommonButton(
                title: AppTexts.logout,
                iconData: '',
                isFill: true,
                isIconVisible: false,
                onPressed: () {},
                buttonShouldDisable: false,
              ),
              VerticalSpacer(height: 22.h),
              CommonButton(
                title: AppTexts.deleteAccount,
                textColor: AppColors.red,
                borderColor: AppColors.red,
                iconData: '',
                isFill: false,
                isIconVisible: false,
                onPressed: () {
                  Get.offAllNamed(routeSplash);
                },
                iconColor: AppColors.transparent,
                buttonShouldDisable: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
