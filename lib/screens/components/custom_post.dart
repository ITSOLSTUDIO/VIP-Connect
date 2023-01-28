import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/screens/components/common_Icon_and_text_button.dart';
import 'package:vip_connect/screens/components/spacer.dart';

import '../../helper/app_texts.dart';

class CustomPost extends StatelessWidget {
  CustomPost({
    Key? key,
    this.hideBelowImage,
    required this.onTapLiked,
    required this.onTapDisLiked,
    required this.onTapComment,
    required this.onTapShare,
  }) : super(key: key);

  bool? hideBelowImage;
  VoidCallback onTapLiked, onTapDisLiked, onTapComment, onTapShare;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
          left: 8.w,
          right: 8.w,
          top: 9.h,
          bottom:
              (hideBelowImage == null || hideBelowImage == false) ? 9.h : 0),
      decoration: BoxDecoration(
        color: AppColors.black800,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(kBorderRadius20),
            bottom: (hideBelowImage == null || hideBelowImage == false)
                ? Radius.circular(kBorderRadius20)
                : const Radius.circular(0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35.h,
                width: 35.h,
                child: CircleAvatar(
                  child: Image.asset(
                    AppAssets.logoImg,
                  ),
                ),
              ),
              HorizontalSpacer(width: 10.w),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jonathan Cooper",
                      style: AppTextStyle.bodyMedium.copyWith(
                        fontSize: kFontSize11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Specialist Marketing at Foods",
                      style: AppTextStyle.bodyMedium.copyWith(
                        fontSize: kFontSize8,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    VerticalSpacer(height: 3.h),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "2w",
                          style: AppTextStyle.bodyMedium.copyWith(
                            fontSize: kFontSize12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        HorizontalSpacer(width: 5.w),
                        SvgPicture.asset(
                          AppAssets.worldSvg,
                          color: AppColors.primary,
                          height: 12.h,
                          width: 12.w,
                        )
                      ],
                    )
                  ],
                ),
              ),
              PopupMenuButton(
                color: AppColors.border,
                icon: SvgPicture.asset(AppAssets.moreVerticalSvg),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text(
                        AppTexts.edit,
                        style: AppTextStyle.popping14_600,
                      ),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text(
                        AppTexts.delete,
                        style: AppTextStyle.popping14_600,
                      ),
                    ),
                  ];
                },
                onSelected: (value) {},
              ),
            ],
          ),
          VerticalSpacer(height: 12.h),
          Text(
            AppTexts.dummyPostDescription,
            style: AppTextStyle.bodyRegular.copyWith(
              fontSize: kFontSize11,
              color: AppColors.primary,
            ),
          ),
          VerticalSpacer(height: 16.h),
          Image.asset(
            AppAssets.dummyPostImg,
            fit: BoxFit.cover,
            height: (hideBelowImage == null || hideBelowImage == false)
                ? 170.h
                : 130.h,
            width: double.infinity,
          ),
          if (hideBelowImage == null || hideBelowImage == false) ...{
            VerticalSpacer(height: 12.h),
            Text(
              "12.K Likes  120 Comments  600 Shares",
              style: AppTextStyle.bodyRegular.copyWith(
                fontSize: kFontSize12,
                color: AppColors.white300,
              ),
            ),
            VerticalSpacer(height: 16.h),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CommonIconAndTextButton(
                    height: 22.h,
                    text: 'Like',
                    iconSize16: true,
                    svgData: AppAssets.maskGroupSvg,
                    isFill: true,
                    iconColor: AppColors.secondary,
                    onPressed: onTapLiked,
                  ),
                  HorizontalSpacer(width: 15.w),
                  CommonIconAndTextButton(
                    height: 22.h,
                    text: 'Dislike',
                    iconSize16: true,
                    svgData: AppAssets.maskGroup1Svg,
                    isFill: true,
                    iconColor: AppColors.secondary,
                    onPressed: onTapDisLiked,
                  ),
                  HorizontalSpacer(width: 15.w),
                  CommonIconAndTextButton(
                    height: 22.h,
                    text: 'Comment',
                    iconSize16: false,
                    svgData: AppAssets.messageSquareSvg,
                    isFill: true,
                    iconColor: AppColors.secondary,
                    onPressed: onTapComment,
                  ),
                  HorizontalSpacer(width: 15.w),
                  CommonIconAndTextButton(
                    height: 22.h,
                    text: 'Share',
                    iconSize16: false,
                    svgData: AppAssets.shareSvg,
                    isFill: true,
                    iconColor: AppColors.secondary,
                    onPressed: onTapShare,
                  ),
                ],
              ),
            ),
            VerticalSpacer(height: 6.h),
          }
        ],
      ),
    );
  }
}
