import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
import 'package:vip_connect/screens/components/custom_textfield.dart';
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

  static void showAddPostBottomSheet() {
    Get.bottomSheet(
      Scaffold(
        bottomNavigationBar: Container(
          color: AppColors.secondary,
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            bottom: Get.context != null
                ? MediaQuery.of(Get.context!).viewInsets.bottom == 0
                    ? 22.h
                    : MediaQuery.of(Get.context!).viewInsets.bottom
                : 22.h,
          ),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppAssets.videoCameraSvg)),
              IconButton(
                  onPressed: () {}, icon: SvgPicture.asset(AppAssets.imageSvg)),
              IconButton(
                  onPressed: () {
                    showListOfNewPostOptionsBottomSheet();
                  },
                  icon: SvgPicture.asset(AppAssets.moreHorizontalSvg)),
            ],
          ),
        ),
        body: Container(
          color: AppColors.secondary,
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpacer(height: 60.h),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                splashRadius: 20.r,
                icon: SvgPicture.asset(AppAssets.closeSvg),
              ),
              VerticalSpacer(height: 80.h),
              CustomTextField(
                mainTitle: AppTexts.whatDoYouWantToTalkAbout,
                hideMainTitle: true,
                disableBorder: true,
                hintText: AppTexts.whatDoYouWantToTalkAbout,
                hintTextStyle: AppTextStyle.bodyRegular.copyWith(
                  color: AppColors.white500,
                ),
                filled: false,
                onSaved: (String? newValue) {},
                validator: (String? value) {},
              ),
              VerticalSpacer(height: 220.h),
              CommonButton(
                title: AppTexts.post,
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
      ),
      enableDrag: false,
      isDismissible: false,
      ignoreSafeArea: false,
      isScrollControlled: true,
      persistent: false,
    );
  }

  static void showListOfNewPostOptionsBottomSheet() {
    List<String> listOfSvg = [
      AppAssets.articleSvg,
      AppAssets.imageSvg,
      AppAssets.videoCameraSvg,
      AppAssets.fileSvg,
      AppAssets.pollSvg,
    ];

    List<String> listOfTitle = [
      AppTexts.publishArticle,
      AppTexts.picture,
      AppTexts.video,
      AppTexts.document,
      AppTexts.createAPoll,
    ];
    List<VoidCallback> listOfOnTap = [
      () {
        Get.offNamed(routePublicArticle);
      },
      () {
        Get.back();
      },
      () {
        Get.back();
      },
      () {
        Get.back();
      },
      () {
        Get.back();
        Get.offNamed(routeCreatePoll);
      },
    ];
    Get.bottomSheet(
      Container(
        height: 338.h,
        decoration: BoxDecoration(
          color: AppColors.border,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(kBorderRadius20),
          ),
        ),
        child: Column(
          children: [
            VerticalSpacer(height: 17.h),
            Container(
              height: 5.h,
              width: 99.w,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(kBorderRadius8),
              ),
            ),
            VerticalSpacer(height: 12.h),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                  child: InkWell(
                    onTap: listOfOnTap[index],
                    child: Row(
                      children: [
                        SvgPicture.asset(listOfSvg[index]),
                        HorizontalSpacer(width: 15.w),
                        Text(
                          listOfTitle[index],
                          style: AppTextStyle.popping12_400,
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      barrierColor: AppColors.transparent,
      ignoreSafeArea: false,
      isScrollControlled: false,
      persistent: true,
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
                    color: AppColors.white500,
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
