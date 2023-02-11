import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/controller/dashboard_controller.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/spacer.dart';
import 'package:vip_connect/screens/web/dashboard_screen/web_user_requests.dart';

class WebAllUsers extends StatelessWidget {
  WebAllUsers({Key? key}) : super(key: key);
  RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black800,
      width: double.infinity,
      child: Column(
        children: [
          VerticalSpacer(height: 28.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HorizontalSpacer(width: 30.w),
              Text(
                AppTexts.allUsers,
                style: AppTextStyle.web4.copyWith(fontSize: kFontSize30),
              ),
              const Spacer(),
              SizedBox(
                width: 260.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h),
                    hintText: "Search here...",
                    hintStyle: AppTextStyle.bodyRegular.copyWith(
                      fontSize: kFontSize14,
                      color: AppColors.primary,
                    ),
                    filled: true,
                    fillColor: AppColors.border,
                    suffix: SvgPicture.asset(
                      AppAssets.maskGroup2Svg,
                      color: AppColors.primary,
                      height: 24.h,
                      width: 24.h,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                      ),
                      borderRadius: BorderRadius.circular(kBorderRadius10),
                    ),
                  ),
                ),
              ),
              HorizontalSpacer(width: 30.w),
            ],
          ),
          VerticalSpacer(height: 25.h),
          Container(
            height: 68.h,
            margin: EdgeInsets.only(left: 30.w, right: 30.w),
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kBorderRadius16),
                topRight: Radius.circular(kBorderRadius16),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: CustomCheckbox(),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Data",
                    style: AppTextStyle.bodyMedium
                        .copyWith(fontSize: kFontSize12 + 1.79.sp),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "User Name",
                    style: AppTextStyle.bodyMedium
                        .copyWith(fontSize: kFontSize12 + 1.79.sp),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Job Title",
                    style: AppTextStyle.bodyMedium
                        .copyWith(fontSize: kFontSize12 + 1.79.sp),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Industry Name",
                    style: AppTextStyle.bodyMedium
                        .copyWith(fontSize: kFontSize12 + 1.79.sp),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Email",
                    style: AppTextStyle.bodyMedium
                        .copyWith(fontSize: kFontSize12 + 1.79.sp),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Invited Friends",
                    style: AppTextStyle.bodyMedium
                        .copyWith(fontSize: kFontSize12 + 1.79.sp),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                height: 68.h,
                margin: EdgeInsets.only(left: 30.w, right: 30.w),
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                  border: Border(
                    top: BorderSide(
                        color: AppColors.primary,
                        width: index == 0 ? 1.5.h : 0.77.h),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: CustomCheckbox(),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "June 1, 2020, 08:22 AM",
                        style: AppTextStyle.bodyMedium.copyWith(
                          fontSize: kFontSize12 + 1.79.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Container(
                            height: 37.54.h,
                            width: 37.54.h,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius8),
                                image: const DecorationImage(
                                  image: AssetImage(AppAssets.dummyPostImg),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          HorizontalSpacer(width: 13.w),
                          Expanded(
                            child: Text(
                              "User Name",
                              style: AppTextStyle.bodyMedium.copyWith(
                                fontSize: kFontSize12 + 1.79.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Manager",
                        style: AppTextStyle.bodyMedium.copyWith(
                          fontSize: kFontSize12 + 1.79.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Abacus",
                        style: AppTextStyle.bodyMedium.copyWith(
                          fontSize: kFontSize12 + 1.79.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "johndoe56@gmail.com",
                        style: AppTextStyle.bodyMedium.copyWith(
                          fontSize: kFontSize12 + 1.79.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "3",
                              style: AppTextStyle.bodyMedium.copyWith(
                                fontSize: kFontSize12 + 1.79.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          PopupMenuButton<dynamic>(
                            initialValue: null,
                            // alignment: Alignment.centerRight,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            surfaceTintColor: AppColors.black800,
                            color: AppColors.black800,
                            padding: EdgeInsets.zero,
                            iconSize: 24.h,
                            icon: const Icon(
                              Icons.more_vert_rounded,
                              color: AppColors.primary,
                            ),
                            onSelected: (dynamic item) {
                              // selectedMenu = item;
                            },
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<dynamic>>[
                              MenuItem(
                                "View User Details",
                                AppAssets.eyeSvg,
                                () {
                                  Get.find<DashboardController>()
                                      .updateDashboardWebEnum(
                                          DashboardWebEnum.showUserDetail);
                                },
                              ),
                              MenuItem(
                                AppTexts.deleteUser,
                                AppAssets.trashSvg,
                                () {
                                  Get.find<DashboardController>()
                                      .updateDashboardWebEnum(
                                          DashboardWebEnum.showUserDelete);
                                },
                              ),
                              MenuItem(
                                AppTexts.blockUser,
                                AppAssets.personSvg,
                                () {},
                              ),
                            ],
                          ),
                          HorizontalSpacer(width: 26.w),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Container(
            height: 22.h,
            margin: EdgeInsets.only(left: 30.w, right: 30.w),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: AppColors.primary, width: 0.77.h),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kBorderRadius16),
                  bottomRight: Radius.circular(kBorderRadius16),
                ),
              ),
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 46.h,
              margin: EdgeInsets.only(right: 30.w),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HorizontalSpacer(width: 10.w),
                  SvgPicture.asset(
                    AppAssets.leftIconSvg,
                    color: AppColors.white,
                    height: 18.h,
                    width: 18.h,
                  ),
                  HorizontalSpacer(width: 13.w),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return index == currentIndex.value
                          ? Container(
                              height: 46.h,
                              width: 46.h,
                              padding: EdgeInsets.symmetric(
                                vertical: 13.h,
                              ),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.border,
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius8),
                              ),
                              child: Text(
                                index.toString(),
                                style: AppTextStyle.web4.copyWith(
                                    color: AppColors.primary,
                                    fontSize: kFontSize12),
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 13.h,
                              ),
                              child: Text(
                                index.toString(),
                                style: AppTextStyle.web4.copyWith(
                                    color: AppColors.blackHalfText,
                                    fontSize: kFontSize12),
                              ),
                            );
                    },
                  ),
                  HorizontalSpacer(width: 13.w),
                  SvgPicture.asset(
                    AppAssets.rightIconSvg,
                    color: AppColors.white,
                    height: 18.h,
                    width: 18.h,
                  ),
                  HorizontalSpacer(width: 10.w),
                ],
              ),
            ),
          ),
          VerticalSpacer(height: 38.h),
        ],
      ),
    );
  }
}

class CustomCheckbox extends StatelessWidget {
  CustomCheckbox({
    super.key,
  });
  RxBool isSelected = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          isSelected.toggle();
        },
        child: SvgPicture.asset(
          isSelected.isTrue
              ? AppAssets.checkboxFillSvg
              : AppAssets.checkboxEmptySvg,
          color: AppColors.primary,
          height: 15.32.h,
          width: 15.32.h,
        ),
      ),
    );
  }
}
