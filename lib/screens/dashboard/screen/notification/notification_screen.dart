import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_list_tile_2.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: AppTexts.notifications),
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacer(height: 22.h),
            Text(
              AppTexts.news,
              style: AppTextStyle.h3.copyWith(
                fontSize: kFontSize20,
                fontWeight: FontWeight.w500,
                color: AppColors.white300,
              ),
            ),
            VerticalSpacer(height: 16.h),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return CustomListTile2(
                    title: "Applied Approve!",
                    subtitle:
                        "Lorem ipsum dolor sit amet consecte tur. Vel mus et id pellentesque at et.",
                    imagePath: AppAssets.tempProfileImg,
                    onTap: () {},
                  );
                }),
          ],
        ),
      ),
    );
  }
}
