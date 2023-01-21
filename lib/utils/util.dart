import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class Util {
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static void showToast(String message) {
    EasyLoading.showToast(
      message,
      duration: const Duration(seconds: 3),
      toastPosition: EasyLoadingToastPosition.bottom,
      dismissOnTap: true,
      maskType: EasyLoadingMaskType.clear,
    );
  }

  static void showLoading(String message) {
    EasyLoading.show(
      status: message,
      indicator: const CircularProgressIndicator.adaptive(
        backgroundColor: AppColors.secondary,
      ),
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.clear,
    );
  }

  static void showSnackBar(String title, String message, [String? svgPicture]) {
    Get.snackbar(title, message);
  }

  static void showErrorSnackBar(String message) {
    Get.snackbar(
      "",
      "",
      duration: const Duration(milliseconds: 1200),
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text(
        message,
        style: AppTextStyle.h3.copyWith(color: AppColors.primary),
      ),
      messageText: const SizedBox(),
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      margin: EdgeInsets.only(bottom: 40.h, left: 16.w, right: 16.w),
      backgroundColor: AppColors.secondary,
    );
  }

  static void showPostAddedSnackBar(String message) {
    Get.snackbar(
      "",
      "",
      snackPosition: SnackPosition.BOTTOM,
      titleText: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              message,
              style: AppTextStyle.h3.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'view_last_post'.tr,
              style: AppTextStyle.h3,
            ),
          ),
          Image.asset(
            // AppAssets.closeImg,
            "",
            height: 20.h,
            width: 20.w,
          ),
        ],
      ),
      messageText: const SizedBox(),
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
      margin: EdgeInsets.only(bottom: 40.h, left: 16.w, right: 16.w),
      backgroundColor: AppColors.secondary,
    );
  }

  static void setEasyLoading() {
    EasyLoading.instance
      ..indicatorSize = 22.w
      ..indicatorColor = AppColors.white
      ..indicatorType = EasyLoadingIndicatorType.foldingCube
      ..userInteractions = false
      ..dismissOnTap = false
      ..backgroundColor = AppColors.secondary
      ..animationStyle = EasyLoadingAnimationStyle.opacity
      ..animationDuration = const Duration(milliseconds: 400);
  }

  static void dismiss() {
    EasyLoading.dismiss();
  }

  static void showAttachmentBottomSheet() {
    Get.bottomSheet(
      barrierColor: AppColors.transparent,
      Container(
        margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 72.h),
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 18.w),
        height: 223.h,
        decoration: BoxDecoration(
          color: AppColors.border,
          borderRadius: BorderRadius.circular(kBorderRadius20),
        ),
        child: Wrap(
          children: [
            CustomIconAndTextButtom(
              title: "Picture",
              svgPath: AppAssets.imageSvg,
              onTap: () {},
            ),
            CustomIconAndTextButtom(
              title: "Video",
              svgPath: AppAssets.videoCameraSvg,
              onTap: () {},
            ),
            CustomIconAndTextButtom(
              title: "Document",
              svgPath: AppAssets.fileSvg,
              onTap: () {},
            ),
            CustomIconAndTextButtom(
              title: "Location",
              svgPath: AppAssets.locationSvg,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIconAndTextButtom extends StatelessWidget {
  CustomIconAndTextButtom({
    Key? key,
    required this.title,
    required this.svgPath,
    required this.onTap,
  }) : super(key: key);
  String title, svgPath;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 19.w, right: 19.w, bottom: 23.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Container(
                height: 56.h,
                width: 56.h,
                color: AppColors.secondary,
                child: Center(
                  child: SvgPicture.asset(
                    svgPath,
                    color: AppColors.dashboardIcons,
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ),
            ),
            VerticalSpacer(height: 6.h),
            Text(
              title,
              style: AppTextStyle.popping14_600.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
