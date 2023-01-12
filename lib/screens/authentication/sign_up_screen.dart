import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: customAppBar(title: AppTexts.signUpClose),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacer(height: 24.h),
            Text(
              "Create Account",
              style: AppTextStyle.bodyRegular.copyWith(
                color: AppColors.disableText,
              ),
            ),
            VerticalSpacer(height: 24.h),
            CustomTextField(
              mainTitle: AppTexts.firstName,
              hintText: AppTexts.firstName,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.lastName,
              hintText: AppTexts.lastName,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.jobTitle,
              hintText: AppTexts.jobTitle,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.employer,
              hintText: AppTexts.employer,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.addBio,
              hintText: AppTexts.addExperience,
              maxLines: 4,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.enterEmail,
              hintText: AppTexts.enterEmail,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.password,
              hintText: "Enter ${AppTexts.password}",
              obscureText: true,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.confirmPassword,
              hintText: AppTexts.confirmPassword,
              obscureText: true,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 24.h),
            CommonButton(
              title: AppTexts.signUp,
              iconData: '',
              isFill: true,
              isIconVisible: false,
              onPressed: () {
                Get.toNamed(routeOtp);
              },
              iconColor: AppColors.transparent,
              buttonShouldDisable: false,
            ),
            VerticalSpacer(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppTexts.alreadyHaveAccount,
                  style: AppTextStyle.bodyRegular.copyWith(
                    color: AppColors.disableText,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(routeLogin);
                  },
                  child: Text(
                    " ${AppTexts.login}",
                    style: AppTextStyle.bodyMedium.copyWith(
                      color: AppColors.button,
                    ),
                  ),
                ),
              ],
            ),
            VerticalSpacer(height: 24.h),
          ],
        ),
      ),
    );
  }
}
