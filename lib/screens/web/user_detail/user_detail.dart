import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/controller/dashboard_controller.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black800,
      width: double.infinity,
      child: Column(
        children: [
          VerticalSpacer(height: 43.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HorizontalSpacer(width: 33.w),
              IconButton(
                onPressed: () {
                  if (Get.find<DashboardController>().currentWebIndex.value ==
                      0) {
                    Get.find<DashboardController>()
                        .updateDashboardWebEnum(DashboardWebEnum.showAllUsers);
                  } else {
                    Get.find<DashboardController>().updateDashboardWebEnum(
                        DashboardWebEnum.showUserRequests);
                  }
                },
                iconSize: 35.h,
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.white500,
                ),
              ),
              HorizontalSpacer(width: 24.w),
              Text(
                AppTexts.userDetails,
                style: AppTextStyle.web4.copyWith(
                  fontSize: kFontSize24,
                  color: AppColors.white500,
                ),
              ),
              HorizontalSpacer(width: 30.w),
            ],
          ),
          VerticalSpacer(height: 34.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(kBorderRadius8),
            child: Image.asset(
              AppAssets.tempProfile2Img,
              height: 106.h,
              width: 106.w,
            ),
          ),
          VerticalSpacer(height: 17.h),
          Text(
            "James",
            style: AppTextStyle.web4.copyWith(
              fontSize: kFontSize30 + 0.72.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.white500,
            ),
          ),
          VerticalSpacer(height: 21.h),
          Text(
            "jamesmark45@gmail.com",
            style: AppTextStyle.web4.copyWith(
              fontSize: kFontSize21 + 0.07.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.white500,
            ),
          ),
          VerticalSpacer(height: 83.h),
          Container(
            height: 339.h,
            width: 1106.w,
            padding: EdgeInsets.only(
                left: 44.w, top: 38.h, right: 60.w, bottom: 38.h),
            decoration: BoxDecoration(
              color: AppColors.black700,
              borderRadius: BorderRadius.circular(kBorderRadius18),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 240.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppTexts.jobTitle,
                        style: AppTextStyle.popping18_400.copyWith(
                          fontSize: kFontSize20 + 0.22.sp,
                          color: AppColors.white300,
                        ),
                      ),
                      VerticalSpacer(height: 14.h),
                      Text(
                        "ABC Bussiness Name",
                        style: AppTextStyle.popping18_400.copyWith(
                          fontSize: kFontSize20 + 0.22.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white300,
                        ),
                      ),
                      VerticalSpacer(height: 24.h),
                      Text(
                        AppTexts.industry,
                        style: AppTextStyle.popping18_400.copyWith(
                          fontSize: kFontSize20 + 0.22.sp,
                          color: AppColors.white300,
                        ),
                      ),
                      VerticalSpacer(height: 14.h),
                      Text(
                        "Car Garage",
                        style: AppTextStyle.popping18_400.copyWith(
                          fontSize: kFontSize20 + 0.22.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white300,
                        ),
                      ),
                    ],
                  ),
                ),
                HorizontalSpacer(width: 62.w),
                SizedBox(
                  width: 680.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppTexts.industry,
                        style: AppTextStyle.popping18_400.copyWith(
                          fontSize: kFontSize20 + 0.22.sp,
                          color: AppColors.white300,
                        ),
                      ),
                      VerticalSpacer(height: 8.h),
                      Text(
                        AppTexts.loremIpsum,
                        maxLines: 8,
                        style: AppTextStyle.popping18_400.copyWith(
                          fontSize: kFontSize20 + 0.22.sp,
                          color: AppColors.white300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          VerticalSpacer(height: 51.h),
          Row(
            children: [
              HorizontalSpacer(width: 72.w),
              Expanded(
                child: CommonButton(
                  isWeb: true,
                  title: AppTexts.reject,
                  iconData: '',
                  isFill: true,
                  isIconVisible: false,
                  textColor: AppColors.white500,
                  iconColor: AppColors.transparent,
                  buttonShouldDisable: false,
                  bgColor: AppColors.transparent,
                  onPressed: () {
                    if (Get.find<DashboardController>().currentWebIndex.value ==
                        0) {
                      Get.find<DashboardController>().updateDashboardWebEnum(
                          DashboardWebEnum.showAllUsers);
                    } else {
                      Get.find<DashboardController>().updateDashboardWebEnum(
                          DashboardWebEnum.showUserRequests);
                    }
                    // Get.toNamed(routeDashboardWeb);
                  },
                ),
              ),
              HorizontalSpacer(width: 18.w),
              Expanded(
                child: CommonButton(
                  isWeb: true,
                  title: AppTexts.approved,
                  iconData: '',
                  isFill: true,
                  textColor: AppColors.white,
                  isIconVisible: false,
                  iconColor: AppColors.transparent,
                  buttonShouldDisable: false,
                  borderColor: AppColors.secondary,
                  bgColor: AppColors.secondary,
                  onPressed: () {
                    if (Get.find<DashboardController>().currentWebIndex.value ==
                        0) {
                      Get.find<DashboardController>().updateDashboardWebEnum(
                          DashboardWebEnum.showAllUsers);
                    } else {
                      Get.find<DashboardController>().updateDashboardWebEnum(
                          DashboardWebEnum.showUserRequests);
                    }
                    // Get.toNamed(routeDashboardWeb);
                  },
                ),
              ),
              HorizontalSpacer(width: 72.w),
            ],
          )
        ],
      ),
    );
  }
}
