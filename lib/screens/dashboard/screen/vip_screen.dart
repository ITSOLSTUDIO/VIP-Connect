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
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class VipScreen extends StatelessWidget {
  const VipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: AppTexts.vipConnections,
        hideBackButton: true,
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 60.h),
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 19.w),
            child: Column(
              children: [
                VerticalSpacer(height: 20.h),
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
                VerticalSpacer(height: 4.h),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacer(height: 18.h),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 163.w / 288.h,
                crossAxisSpacing: 8.w,
                mainAxisSpacing: 10.h,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(routeVipDetail);
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      color: AppColors.black800,
                      borderRadius: BorderRadius.circular(kBorderRadius11),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100.h,
                          child: Stack(
                            children: [
                              Image.asset(
                                AppAssets.bgImg,
                                height: 64.h,
                              ),
                              Positioned(
                                top: 10.h,
                                right: 11.w,
                                child: Image.asset(
                                  AppAssets.linkedinLogoImg,
                                  height: 27.h,
                                  width: 27.w,
                                ),
                              ),
                              Positioned.fill(
                                top: 24.h,
                                child: ClipOval(
                                  child: Image.asset(
                                    AppAssets.tempProfileImg,
                                    height: 66.h,
                                    width: 66.w,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              VerticalSpacer(height: 4.h),
                              Text(
                                "Olivia Grace",
                                maxLines: 1,
                                style: AppTextStyle.popping14_600,
                              ),
                              VerticalSpacer(height: 1.h),
                              Text(
                                "Vice President at company",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: AppTextStyle.popping12_400,
                              ),
                              CustomIconAndText(
                                title: "Copmany Inc",
                                imagePath: AppAssets.dummyPostImg,
                                style: AppTextStyle.popping12_300,
                              ),
                              VerticalSpacer(height: 7.h),
                              CustomSvgAndText(
                                title: "London,N90 Florida",
                                svgPath: AppAssets.locationSvg,
                                style: AppTextStyle.popping12_300,
                              ),
                              VerticalSpacer(height: 10.h),
                              CustomSvgAndText(
                                title: "Music, Books Read, Music",
                                svgPath: AppAssets.musicSvg,
                                style: AppTextStyle.popping12_300,
                              ),
                              VerticalSpacer(height: 12.h),
                              CommonButton(
                                title: AppTexts.connect,
                                iconData: '',
                                height: 26.h,
                                borderRadius: kBorderRadius6,
                                padding: EdgeInsets.zero,
                                isFill: true,
                                bgColor: AppColors.black800,
                                borderColor: AppColors.primary,
                                isIconVisible: false,
                                style: AppTextStyle.rubik12_600,
                                onPressed: () {},
                                iconColor: AppColors.transparent,
                                buttonShouldDisable: false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIconAndText extends StatelessWidget {
  CustomIconAndText({
    Key? key,
    this.size,
    required this.title,
    required this.imagePath,
    required this.style,
  }) : super(key: key);
  String title, imagePath;
  TextStyle style;
  double? size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(kBorderRadius6),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: size ?? 21.h,
            width: size ?? 21.w,
          ),
        ),
        HorizontalSpacer(width: 3.w),
        SizedBox(
          width: size != null ? null : 81.w,
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: style,
          ),
        ),
      ],
    );
  }
}

class CustomSvgAndText extends StatelessWidget {
  CustomSvgAndText({
    Key? key,
    this.size,
    required this.title,
    required this.svgPath,
    required this.style,
  }) : super(key: key);
  String title, svgPath;
  TextStyle style;
  double? size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(
          svgPath,
          height: size ?? 18.h,
          width: size ?? 18.w,
        ),
        HorizontalSpacer(width: size != null ? 8.w : 3.w),
        Expanded(
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: style,
          ),
        ),
      ],
    );
  }
}
