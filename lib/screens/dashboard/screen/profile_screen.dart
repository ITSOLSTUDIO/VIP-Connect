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
import 'package:vip_connect/screens/components/spacer.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final List<String> accountTileTitle = [
    AppTexts.updateProfile,
    AppTexts.changeEmailAddress,
    AppTexts.changePassword,
  ];

  final List<String> accountTileSubTitle = [
    AppTexts.updateProfileSubtitle,
    AppTexts.changeEmailAddressSubtitle,
    AppTexts.changePasswordSubtitle,
  ];

  final List<String> accountTileSvgPath = [
    AppAssets.personSvg,
    AppAssets.emailFillSvg,
    AppAssets.lockSvg,
  ];

  final List<VoidCallback> accountTileOnTap = [
    () {},
    () {
      Get.toNamed(routeChangeEmail);
    },
    () {
      Get.toNamed(routeChangePassword);
    },
  ];

  final List<String> otherTileTitle = [
    AppTexts.inviteYourFriends,
    AppTexts.privacy
  ];

  final List<String> otherTileSubTitle = [
    AppTexts.inviteYourFriendsSubtitle,
    AppTexts.privacySubtitle
  ];

  final List<String> otherTileSvgPath = [
    AppAssets.shareSvg,
    AppAssets.questionMarkCircleSvg
  ];

  final List<VoidCallback> otherTileOnTap = [() {}, () {}];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.secondary,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpacer(height: 22.h),
              Text(
                AppTexts.profile,
                style: AppTextStyle.h3.copyWith(
                  fontSize: kFontSize20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white300,
                ),
              ),
              VerticalSpacer(height: 12.h),
              Text(
                AppTexts.account.toUpperCase(),
                style: AppTextStyle.bodyMedium.copyWith(
                  fontSize: kFontSize14,
                  color: AppColors.white300.withOpacity(0.5),
                ),
              ),
              VerticalSpacer(height: 16.h),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CustomListTile(
                      title: accountTileTitle[index],
                      subtitle: accountTileSubTitle[index],
                      svgPath: accountTileSvgPath[index],
                      onTap: accountTileOnTap[index],
                    );
                  }),
              VerticalSpacer(height: 12.h),
              Text(
                AppTexts.other.toUpperCase(),
                style: AppTextStyle.bodyMedium.copyWith(
                  fontSize: kFontSize14,
                  color: AppColors.white300.withOpacity(0.5),
                ),
              ),
              VerticalSpacer(height: 16.h),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CustomListTile(
                      title: otherTileTitle[index],
                      subtitle: otherTileSubTitle[index],
                      svgPath: otherTileSvgPath[index],
                      onTap: otherTileOnTap[index],
                    );
                  }),
              VerticalSpacer(height: 18.h),
              CommonButton(
                title: AppTexts.logout,
                iconData: '',
                isFill: true,
                isIconVisible: false,
                onPressed: () {
                  Get.offAllNamed(routeSplash);
                },
                buttonShouldDisable: false,
              ),
              VerticalSpacer(height: 22.h),
              CommonButton(
                title: AppTexts.deleteAccount,
                textColor: AppColors.red,
                borderColor: AppColors.red,
                iconData: '',
                isFill: false,
                isIconVisible: false,
                onPressed: () {
                  Get.offAllNamed(routeSplash);
                },
                iconColor: AppColors.transparent,
                buttonShouldDisable: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.svgPath,
    required this.onTap,
  }) : super(key: key);
  String title, subtitle, svgPath;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.black800,
        borderRadius: BorderRadius.circular(kBorderRadius16),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 44.h,
              width: 44.w,
              child: CircleAvatar(
                backgroundColor: AppColors.secondary,
                child: SvgPicture.asset(
                  svgPath,
                  color: AppColors.primary,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ),
            HorizontalSpacer(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.bodyMedium,
                  ),
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.bodyRegular,
                  ),
                ],
              ),
            ),
            HorizontalSpacer(width: 2.w),
            SvgPicture.asset(
              AppAssets.backArrowSvg,
              height: 20.h,
              width: 20.w,
              color: AppColors.white300,
            ),
          ],
        ),
      ),
    );
  }
}
