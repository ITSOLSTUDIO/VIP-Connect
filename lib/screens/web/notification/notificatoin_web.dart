import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class NotificationWeb extends StatelessWidget {
  const NotificationWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black800,
      width: double.infinity,
      child: Column(
        children: [
          VerticalSpacer(height: 43.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HorizontalSpacer(width: 33.w),
              Text(
                AppTexts.notifications,
                style: AppTextStyle.web4.copyWith(
                  fontSize: kFontSize30,
                  color: AppColors.primary,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: SizedBox(
                  width: 200.w,
                  child: CommonButton(
                    title: AppTexts.clearNotifications,
                    iconData: '',
                    isFill: true,
                    isIconVisible: false,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
                    borderRadius: kBorderRadius10,
                    iconColor: AppColors.transparent,
                    buttonShouldDisable: false,
                    onPressed: () {
                      // Get.back();
                    },
                  ),
                ),
              ),
              HorizontalSpacer(width: 40.w),
            ],
          ),
          VerticalSpacer(height: 25.h),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                height: 90.h,
                margin: EdgeInsets.only(left: 30.w, bottom: 18.h, right: 30.w),
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  borderRadius: BorderRadius.circular(kBorderRadius8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 13.h,
                          horizontal: 24.w,
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 63.h,
                              width: 63.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      kBorderRadius40 * 2),
                                  image: const DecorationImage(
                                    image: AssetImage(AppAssets.dummyPostImg),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            HorizontalSpacer(width: 13.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Alex Minor",
                                  style: AppTextStyle.popping14_600.copyWith(
                                    color: AppColors.primary,
                                    fontSize: kFontSize20 + 1.35.sp,
                                  ),
                                ),
                                VerticalSpacer(height: 15.96.h),
                                Text(
                                  "Create a new collection check click here",
                                  style: AppTextStyle.popping14_600.copyWith(
                                    color: AppColors.primary,
                                    fontSize: kFontSize16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 28.w,
                      ),
                      child: Text(
                        "03-09-2022",
                        style: AppTextStyle.popping16_400.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
