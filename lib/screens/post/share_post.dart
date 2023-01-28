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
import 'package:vip_connect/screens/components/custom_post.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class SharePostScreen extends StatelessWidget {
  const SharePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: AppTexts.sharePost, action: [
        IconButton(
            onPressed: () {},
            splashRadius: 20.r,
            icon: SvgPicture.asset(
              AppAssets.closeSvg,
              color: AppColors.primary,
              height: 24.h,
              width: 24.w,
            ))
      ]),
      backgroundColor: AppColors.secondary,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            VerticalSpacer(height: 40.h),
            CustomTextField(
              mainTitle: AppTexts.writeSomeThing,
              hideMainTitle: true,
              disableBorder: true,
              hintText: AppTexts.writeSomeThing,
              hintTextStyle: AppTextStyle.bodyRegular.copyWith(
                color: AppColors.white500,
              ),
              filled: false,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 16.h),
            CustomPost(
              hideBelowImage: true,
              onTapLiked: () {},
              onTapDisLiked: () {},
              onTapComment: () {},
              onTapShare: () {},
            ),
            VerticalSpacer(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: CommonButton(
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
            ),
          ],
        ),
      ),
    );
  }
}
