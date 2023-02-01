import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class LoginScreenWeb extends GetResponsiveView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Center(
        child: Row(
          children: [
            HorizontalSpacer(width: 99.w),
            Image.asset(
              AppAssets.logoImg,
              height: 295.h,
              width: 526.w,
            ),
            HorizontalSpacer(width: 105.w),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppTexts.signIn,
                    style: AppTextStyle.web1,
                  ),
                  VerticalSpacer(height: 18.h),
                  Text(
                    "Hello James welcome back to your dashboard.",
                    style: AppTextStyle.web2,
                  ),
                  VerticalSpacer(height: 31.h),
                  CustomTextField(
                    mainTitle: AppTexts.emailAddress,
                    hintText: "Your email address",
                    filled: true,
                    fillColor: AppColors.primary,
                    prefixWidget: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.h, horizontal: 16.w),
                      child: SvgPicture.asset(
                        AppAssets.emailFillSvg,
                        height: 24.h,
                        width: 24.h,
                      ),
                    ),
                    onSaved: (String? newValue) {},
                    validator: (String? value) {},
                  ),
                  VerticalSpacer(height: 20.h),
                  CustomTextField(
                    isWeb: true,
                    mainTitle: AppTexts.password,
                    hintText: "Your password",
                    filled: true,
                    obscureText: true,
                    fillColor: AppColors.primary,
                    prefixWidget: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.h, horizontal: 16.w),
                      child: SvgPicture.asset(
                        AppAssets.lockSvg,
                        height: 24.h,
                        width: 24.h,
                      ),
                    ),
                    onSaved: (String? newValue) {},
                    validator: (String? value) {},
                  ),
                  VerticalSpacer(height: 90.h),
                  CommonButton(
                    isWeb: true,
                    title: AppTexts.login,
                    iconData: '',
                    isFill: true,
                    isIconVisible: false,
                    onPressed: () {
                      Get.toNamed(routeDashboardWeb);
                    },
                    iconColor: AppColors.transparent,
                    buttonShouldDisable: false,
                  ),
                ],
              ),
            ),
            HorizontalSpacer(width: 130.w),
          ],
        ),
      ),
    );
  }
}
