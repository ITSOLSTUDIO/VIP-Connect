import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_post.dart';
import 'package:vip_connect/screens/components/spacer.dart';
import 'package:vip_connect/utils/util.dart';

class CommentPostScreen extends StatelessWidget {
  const CommentPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: ""),
      backgroundColor: AppColors.secondary,
      body: Column(
        children: [
          VerticalSpacer(height: 40.h),
          CustomPost(
            onTapLiked: () {},
            onTapDisLiked: () {},
            onTapComment: () {},
            onTapShare: () {},
          ),
          VerticalSpacer(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                SizedBox(
                  height: 42.h,
                  width: 42.h,
                  child: Image.asset(AppAssets.tempProfileImg),
                ),
                HorizontalSpacer(width: 6.w),
                Expanded(
                  child: Container(
                    height: 94.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.black800,
                      borderRadius: BorderRadius.circular(kBorderRadius16),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.w, vertical: 23.h),
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          fillColor: AppColors.primary,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          hintStyle: AppTextStyle.bodyRegular.copyWith(
                            fontSize: kFontSize12,
                            color: AppColors.hintText,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          hintText: AppTexts.addAComment,
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Util.showAttachmentBottomSheet();
                                },
                                child: SvgPicture.asset(
                                  AppAssets.attachmentSvg,
                                  color: AppColors.icons1,
                                  height: 18.h,
                                  width: 14.w,
                                ),
                              ),
                              HorizontalSpacer(width: 10.w),
                              GestureDetector(
                                onTap: () {
                                  print("Tapped");
                                },
                                child: SvgPicture.asset(
                                  AppAssets.imageSvg,
                                  color: AppColors.icons1,
                                  height: 18.h,
                                  width: 10.w,
                                ),
                              ),
                              HorizontalSpacer(width: 10.w),
                              GestureDetector(
                                onTap: () {
                                  print("Tapped");
                                },
                                child: SvgPicture.asset(
                                  AppAssets.sendSvg,
                                  color: AppColors.icons1,
                                  height: 14.h,
                                  width: 18.w,
                                ),
                              ),
                              HorizontalSpacer(width: 20.w),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
