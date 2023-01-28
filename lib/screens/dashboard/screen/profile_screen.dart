import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_list_tile.dart';
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
    () {
      Get.toNamed(routeUpdateProfile);
    },
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
    AppTexts.privacyPolicy
  ];

  final List<String> otherTileSvgPath = [
    AppAssets.shareSvg,
    AppAssets.questionMarkCircleSvg
  ];

  final List<VoidCallback> otherTileOnTap = [
    () {
      Get.toNamed(routeInviteFriend);
    },
    () {
      Get.toNamed(routePrivacyPolicy);
    }
  ];

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
                style: AppTextStyle.h3.copyWith(color: AppColors.white300),
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
                  physics: const NeverScrollableScrollPhysics(),
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
                  physics: const NeverScrollableScrollPhysics(),
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
                  Get.offAllNamed(routeOnBoarding);
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
                  Get.offAllNamed(routeOnBoarding);
                },
                iconColor: AppColors.transparent,
                buttonShouldDisable: false,
              ),
              VerticalSpacer(height: 22.h),
            ],
          ),
        ),
      ),
    );
  }
}
