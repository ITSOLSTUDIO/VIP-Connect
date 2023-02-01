import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/spacer.dart';
import 'package:vip_connect/screens/dashboard/screen/vip_screen.dart';
import 'package:vip_connect/utils/util.dart';

class VipDetail extends StatelessWidget {
  const VipDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: "",
      ),
      backgroundColor: AppColors.secondary,
      body: Container(
        height: 618.h,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: AppColors.black800,
          borderRadius: BorderRadius.circular(kBorderRadius22),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 153.h,
              width: double.infinity,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(kBorderRadius22),
                    ),
                    child: Image.asset(
                      AppAssets.bgImg,
                      fit: BoxFit.cover,
                      height: 100.h,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    right: 17.w,
                    child: Image.asset(
                      AppAssets.linkedinLogoImg,
                      height: 35.h,
                      width: 35.w,
                    ),
                  ),
                  Positioned.fill(
                    top: 31.h,
                    child: ClipOval(
                      child: Image.asset(
                        AppAssets.tempProfileImg,
                        height: 122.h,
                        width: 122.w,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    VerticalSpacer(height: 17.h),
                    Text(
                      "Olivia Grace",
                      maxLines: 1,
                      style: AppTextStyle.popping24_600,
                    ),
                    VerticalSpacer(height: 5.h),
                    Text(
                      "Vice President at company",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.popping18_400,
                    ),
                    VerticalSpacer(height: 8.h),
                    CustomIconAndText(
                      title: "Company Inc",
                      imagePath: AppAssets.dummyPostImg,
                      style: AppTextStyle.popping18_400
                          .copyWith(fontWeight: FontWeight.w300),
                      size: 32.h,
                    ),
                    VerticalSpacer(height: 22.h),
                    CustomSvgAndText(
                      title: "London,N90 Florida",
                      svgPath: AppAssets.locationSvg,
                      style: AppTextStyle.popping16_400,
                      size: 24.h,
                    ),
                    VerticalSpacer(height: 12.h),
                    CustomSvgAndText(
                      title: "Music, Books Read, Music",
                      svgPath: AppAssets.musicSvg,
                      style: AppTextStyle.popping16_400,
                      size: 24.h,
                    ),
                    VerticalSpacer(height: 24.h),
                    Text(
                      AppTexts.lorumIpsum,
                      style: AppTextStyle.bodyRegular.copyWith(
                        color: AppColors.white500,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 185.w,
                      child: CommonButton(
                        title: AppTexts.connect,
                        iconData: '',
                        height: 40.h,
                        borderRadius: kBorderRadius8,
                        padding: EdgeInsets.zero,
                        isFill: true,
                        bgColor: AppColors.black800,
                        borderColor: AppColors.primary,
                        isIconVisible: false,
                        style: AppTextStyle.rubik12_600
                            .copyWith(fontSize: kFontSize18),
                        onPressed: () {
                          Util.showToast(AppTexts.connectionRequestSent);
                        },
                        iconColor: AppColors.transparent,
                        buttonShouldDisable: false,
                      ),
                    ),
                    VerticalSpacer(height: 24.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
