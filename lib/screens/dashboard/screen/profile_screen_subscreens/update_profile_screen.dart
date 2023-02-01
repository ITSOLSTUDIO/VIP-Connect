import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class UpdateProfileScreen extends StatelessWidget {
  UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: customAppBar(title: AppTexts.updateProfile),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacer(height: 24.h),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 145.h,
                    width: 145.h,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white300,
                      border: Border.all(color: AppColors.white300, width: 4.w),
                      image: const DecorationImage(
                        image: AssetImage(
                          AppAssets.dummyPostImg,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10.w,
                    bottom: 10.h,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 26.h,
                        width: 26.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.secondary,
                          border:
                              Border.all(color: AppColors.white300, width: 2.w),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            AppAssets.cameraCircleSvg,
                            height: 18.h,
                            width: 18.w,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            VerticalSpacer(height: 24.h),
            CustomTextField(
              mainTitle: AppTexts.firstName,
              hintText: AppTexts.enter + AppTexts.firstName,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.lastName,
              hintText: AppTexts.enter + AppTexts.lastName,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.jobTitle,
              hintText: AppTexts.enter + AppTexts.jobTitle,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.company,
              hintText: AppTexts.enter + AppTexts.companyName,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.bio,
              hintText: AppTexts.addExperience,
              obscureText: false,
              maxLines: 4,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 24.h),
            CommonButton(
              title: AppTexts.save,
              iconData: '',
              isFill: true,
              isIconVisible: false,
              onPressed: () {
                Get.back();
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
