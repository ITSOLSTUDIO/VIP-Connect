import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class EditSettingWeb extends StatelessWidget {
  EditSettingWeb({Key? key}) : super(key: key);
  RxBool showEdit = false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black500,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpacer(height: 28.h),
          Padding(
            padding: EdgeInsets.only(left: 35.w),
            child: Text(
              AppTexts.settings,
              style: AppTextStyle.web4.copyWith(fontSize: kFontSize30),
            ),
          ),
          VerticalSpacer(height: 21.h),
          Container(
            height: 583.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 35.w),
            padding: EdgeInsets.symmetric(vertical: 33.h),
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(kBorderRadius10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VerticalSpacer(height: 28.h),
                SizedBox(
                  height: 195.h,
                  width: 195.h,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 195.h,
                        width: 195.h,
                        child: CircleAvatar(
                          child: Image.asset(
                            AppAssets.tempProfileImg,
                            fit: BoxFit.fill,
                            height: 195.h,
                            width: 195.h,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: SvgPicture.asset(
                          AppAssets.pickImageCameraSvg,
                          height: 35.h,
                          width: 35.h,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalSpacer(height: 64.h),
                SizedBox(
                  width: 580.w,
                  child: CustomTextField(
                    mainTitle: AppTexts.name,
                    hintText: AppTexts.name,
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
                ),
                VerticalSpacer(height: 28.h),
                SizedBox(
                  width: 580.w,
                  child: CommonButton(
                    isWeb: true,
                    title: AppTexts.update,
                    iconData: '',
                    isFill: true,
                    isIconVisible: false,
                    onPressed: () {
                      // Get.toNamed(routeDashboardWeb);
                    },
                    iconColor: AppColors.transparent,
                    buttonShouldDisable: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
