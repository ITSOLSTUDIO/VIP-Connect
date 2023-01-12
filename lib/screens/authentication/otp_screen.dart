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
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: customAppBar(title: AppTexts.otpVerification),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            VerticalSpacer(height: 24.h),
            Text(
              "Enter your email OTP and we will send you a link to reset your password.",
              style: AppTextStyle.bodyRegular
                  .copyWith(color: AppColors.disableText),
            ),
            VerticalSpacer(height: 24.h),
            CustomTextField(
              mainTitle: AppTexts.enterOtp,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Didn't received yet?",
                  style: AppTextStyle.bodyRegular.copyWith(
                    color: AppColors.primary,
                  ),
                ),
                Text(" Resent it",
                    style: AppTextStyle.bodyRegular.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ))
              ],
            ),
            VerticalSpacer(height: 165.h),
            CommonButton(
              title: AppTexts.confirm,
              iconData: '',
              isFill: true,
              isIconVisible: false,
              onPressed: () {
                Get.toNamed(routeNewPassword);
              },
              iconColor: AppColors.transparent,
              buttonShouldDisable: false,
            ),
          ],
        ),
      ),
    );
  }
}
