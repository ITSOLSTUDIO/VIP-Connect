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
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class PublishArticleScreen extends StatelessWidget {
  const PublishArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: customAppBar(
        title: AppTexts.publishArticle,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacer(height: 51.h),
            Text(
              AppTexts.headline,
              style: AppTextStyle.bodyRegular
                  .copyWith(                    color: AppColors.white500,
                  fontWeight: FontWeight.w500),
            ),
            VerticalSpacer(height: 32.h),
            Container(
              height: 238.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(kBorderRadius20),
              ),
              child: Center(
                child: SvgPicture.asset(
                  AppAssets.imageSvg,
                  color: AppColors.randomColor1,
                  height: 100.h,
                ),
              ),
            ),
            VerticalSpacer(height: 32.h),
            CommonButton(
              title: AppTexts.publish,
              iconData: '',
              isFill: true,
              isIconVisible: false,
              iconColor: AppColors.transparent,
              buttonShouldDisable: false,
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
