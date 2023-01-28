import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_Icon_button.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_post.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class ArenaScreen extends StatelessWidget {
  const ArenaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
          title: AppTexts.arena,
          hideBackButton: true,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 60.h),
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, right: 20.w),
              child: Column(
                children: [
                  VerticalSpacer(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 6.w, right: 2.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: CustomTextField(
                            mainTitle: AppTexts.searchUserTopic,
                            hideMainTitle: true,
                            hintText: AppTexts.searchUserTopic,
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
                        ),
                        HorizontalSpacer(width: 8.w),
                        CommonIconButton(
                          height: 56.h,
                          width: 62.w,
                          svgData: AppAssets.bellSvg,
                          isFill: true,
                          iconColor: AppColors.red,
                          onPressed: () {
                            Get.toNamed(routeNotificationScreen);
                          },
                        ),
                      ],
                    ),
                  ),
                  VerticalSpacer(height: 4.h),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.secondary,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            children: [
              VerticalSpacer(height: 16.h),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: CustomPost(
                      onTapLiked: () {},
                      onTapDisLiked: () {},
                      onTapComment: () {
                        Get.toNamed(routeCommentPost);
                      },
                      onTapShare: () {
                        Get.toNamed(routeSharePost);
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
