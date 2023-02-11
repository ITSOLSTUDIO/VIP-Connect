import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/controller/dashboard_controller.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class SettingWeb extends StatelessWidget {
  SettingWeb({Key? key}) : super(key: key);

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
            height: 432.h,
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
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 86.w),
                    child: GestureDetector(
                      onTap: () {
                        Get.find<DashboardController>().updateDashboardWebEnum(
                          DashboardWebEnum.showEditSetting,
                        );
                      },
                      child: Text(
                        AppTexts.edit,
                        style: AppTextStyle.popping18_400.copyWith(
                          color: AppColors.white300,
                          fontSize: kFontSize24,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
                VerticalSpacer(height: 3.h),
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
                VerticalSpacer(height: 20.h),
                Text(
                  "John Doe",
                  style: AppTextStyle.popping18_400.copyWith(
                    fontSize: kFontSize24,
                    color: AppColors.white300,
                  ),
                ),
                VerticalSpacer(height: 28.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppAssets.logoutSvg,
                      color: AppColors.white300,
                      height: 35.h,
                      width: 35.h,
                    ),
                    HorizontalSpacer(width: 30.w),
                    Text(
                      "Log out",
                      style: AppTextStyle.popping14_600.copyWith(
                        fontSize: kFontSize24,
                        color: AppColors.white300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
