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
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class NewGroupScreen extends StatelessWidget {
  const NewGroupScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: AppTexts.newGroup),
      backgroundColor: AppColors.secondary,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.white300,
        child: SvgPicture.asset(
          AppAssets.checkmarkSvg,
          height: 24.h,
          width: 24.h,
        ),
        onPressed: () {
          Get.toNamed(routeNewGroupName);
        },
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.searchParticipants,
              hideMainTitle: true,
              hintText: AppTexts.searchParticipants,
              hintTextStyle: AppTextStyle.bodyRegular.copyWith(
                color: AppColors.white500,
              ),
              filled: true,
              fillColor: AppColors.primary,
              prefixWidget: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: SvgPicture.asset(
                  AppAssets.maskGroup2Svg,
                  color: AppColors.secondary,
                  height: 24.h,
                  width: 24.h,
                ),
              ),
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 17.h),
            Text(
              AppTexts.addParticipants,
              style: AppTextStyle.rubik12_600.copyWith(
                fontSize: kFontSize20,
              ),
            ),
            VerticalSpacer(height: 17.h),
            Wrap(
              spacing: 16.w,
              runSpacing: 20.h,
              alignment: WrapAlignment.start,
              children: const [
                CustomImageWithClose(),
                CustomImageWithClose(),
                CustomImageWithClose(),
                CustomImageWithClose(),
                CustomImageWithClose(),
                CustomImageWithClose(),
              ],
            ),
            VerticalSpacer(height: 11.h),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return const CustomParticipantsTitle();
                })
          ],
        ),
      ),
    );
  }
}

class CustomParticipantsTitle extends StatelessWidget {
  const CustomParticipantsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          SizedBox(
            height: 66.h,
            width: 66.h,
            child: Stack(
              children: [
                ClipOval(
                  child: Image.asset(AppAssets.tempProfileImg),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: SvgPicture.asset(
                    AppAssets.onlineUserSvg,
                    height: 18.h,
                    width: 18.h,
                  ),
                ),
              ],
            ),
          ),
          HorizontalSpacer(width: 18.w),
          Expanded(
            child: Text(
              "Todd Peterson",
              style: AppTextStyle.popping18_400,
            ),
          ),
          SvgPicture.asset(
            AppAssets.checkmarkCircleSvg,
            height: 24.h,
            width: 24.h,
          ),
        ],
      ),
    );
  }
}

class CustomImageWithClose extends StatelessWidget {
  const CustomImageWithClose({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 70.h,
      child: Stack(
        children: [
          ClipOval(
            child: Image.asset(AppAssets.tempProfileImg),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: SvgPicture.asset(
                AppAssets.crossCircleSvg,
                height: 24.h,
                width: 24.h,
              ))
        ],
      ),
    );
  }
}
