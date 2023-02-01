import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: customAppBar(title: AppTexts.login),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            VerticalSpacer(height: 26.h),
            Image.asset(
              AppAssets.logoImg,
              height: 121.h,
            ),
            VerticalSpacer(height: 30.h),
            CustomTextField(
              mainTitle: AppTexts.emailAddress,
              hintText: "Your email address",
              filled: true,
              fillColor: AppColors.primary,
              prefixWidget: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: SvgPicture.asset(
                  AppAssets.emailFillSvg,
                  height: 24.h,
                  width: 24.h,
                ),
              ),
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 16.h),
            CustomTextField(
              mainTitle: AppTexts.password,
              hintText: "Your password",
              filled: true,
              obscureText: true,
              fillColor: AppColors.primary,
              prefixWidget: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: SvgPicture.asset(
                  AppAssets.lockSvg,
                  height: 24.h,
                  width: 24.h,
                ),
              ),
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 24.h),
            CommonButton(
              title: AppTexts.login,
              iconData: '',
              isFill: true,
              isIconVisible: false,
              onPressed: () {
                Get.toNamed(routeDashboard);
              },
              iconColor: AppColors.transparent,
              buttonShouldDisable: false,
            ),
            VerticalSpacer(height: 24.h),
            TextButton(
                onPressed: () {
                  Get.toNamed(routeForgetPassword);
                },
                child: Text(
                  "Forgot Password?",
                  style: AppTextStyle.bodyMedium,
                )),
            VerticalSpacer(height: 24.h),
            GestureDetector(
              onTap: () {
                Get.toNamed(routePrivacyPolicy);
              },
              child: Text(
                "By continuing, you agree to the Terms of Services & Privacy Policy.",
                textAlign: TextAlign.center,
                style:
                    AppTextStyle.bodyRegular.copyWith(color: AppColors.primary),
              ),
            ),
            VerticalSpacer(height: 72.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "No Account?",
                  style: AppTextStyle.h3.copyWith(
                    fontSize: kFontSize14,
                    color: AppColors.primary,
                  ),
                ),
                HorizontalSpacer(width: 8.w),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(routeSignUp);
                  },
                  child: Text(
                    "Sign Up Here!",
                    style: AppTextStyle.h3.copyWith(
                      fontSize: kFontSize14,
                      color: AppColors.blackHalfText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
