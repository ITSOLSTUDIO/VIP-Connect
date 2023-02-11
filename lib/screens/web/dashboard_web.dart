import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/controller/dashboard_controller.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/spacer.dart';
import 'package:vip_connect/screens/web/dashboard_screen/web_all_users.dart';
import 'package:vip_connect/screens/web/dashboard_screen/web_user_requests.dart';
import 'package:vip_connect/screens/web/setting/setting_web.dart';
import 'package:vip_connect/screens/web/user_delete/user_delete.dart';
import 'package:vip_connect/screens/web/user_detail/user_detail.dart';

import 'notification/notificatoin_web.dart';
import 'setting/edit_setting_web.dart';

class DashboardWeb extends StatelessWidget {
  DashboardWeb({Key? key}) : super(key: key);
  List<String> titleList = [
    AppTexts.allUsers,
    AppTexts.usersRequests,
    AppTexts.settings
  ];
  List<String> svgPathList = [
    AppAssets.peopleSvg,
    AppAssets.peopleSvg,
    AppAssets.settingsSvg,
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashboardController) {
      return Row(
        children: [
          Container(
            color: AppColors.secondary,
            width: 240.w,
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 26.h, horizontal: 46.w),
                  child: Image.asset(AppAssets.logoImg),
                ),
                VerticalSpacer(height: 6.h),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 24.h),
                      child: Obx(
                        () => CustomAdminTabSelectedButton(
                          title: titleList[index],
                          svgPath: svgPathList[index],
                          isSelected:
                              dashboardController.currentWebIndex.value ==
                                  index,
                          onTap: () {
                            dashboardController.updateCurrentWebIndex(index);
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Obx(
            () => Expanded(
              child: Column(
                children: [
                  Container(
                    color: AppColors.hintText,
                    height: 80.h,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.find<DashboardController>()
                                .updateDashboardWebEnum(
                                    DashboardWebEnum.showUserDetail);
                          },
                          child: SizedBox(
                            height: 49.h,
                            width: 49.h,
                            child: CircleAvatar(
                              backgroundColor: AppColors.white,
                              child: Image.asset(
                                AppAssets.tempProfileImg,
                              ),
                            ),
                          ),
                        ),
                        HorizontalSpacer(width: 20.w),
                        GestureDetector(
                          onTap: () {
                            if (Get.find<DashboardController>()
                                    .dashboardWebEnum
                                    .value !=
                                DashboardWebEnum.showNotification) {
                              Get.find<DashboardController>()
                                  .updateDashboardWebEnum(
                                      DashboardWebEnum.showNotification);
                            } else {
                              if (Get.find<DashboardController>()
                                      .currentWebIndex
                                      .value ==
                                  0) {
                                Get.find<DashboardController>()
                                    .updateDashboardWebEnum(
                                        DashboardWebEnum.showAllUsers);
                              } else {
                                Get.find<DashboardController>()
                                    .updateDashboardWebEnum(
                                        DashboardWebEnum.showUserRequests);
                              }
                            }
                          },
                          child: SizedBox(
                            height: 40.h,
                            width: 40.h,
                            child: CircleAvatar(
                              backgroundColor: AppColors.white,
                              child: SvgPicture.asset(
                                AppAssets.bellSvg,
                                color: AppColors.secondary,
                                height: 16.h,
                                width: 16.h,
                              ),
                            ),
                          ),
                        ),
                        HorizontalSpacer(width: 15.w),
                        SizedBox(
                          height: 40.h,
                          width: 40.h,
                          child: GestureDetector(
                            onTap: () {
                              Get.find<DashboardController>()
                                  .updateDashboardWebEnum(
                                      DashboardWebEnum.showAllUsers);
                              Get.offAllNamed(routeLoginWeb);
                            },
                            child: CircleAvatar(
                              backgroundColor: AppColors.white,
                              child: SvgPicture.asset(
                                AppAssets.logoutSvg,
                                color: AppColors.secondary,
                                height: 12.h,
                                width: 12.h,
                              ),
                            ),
                          ),
                        ),
                        HorizontalSpacer(width: 40.w),
                      ],
                    ),
                  ),
                  dashboardController.dashboardWebEnum.value ==
                          DashboardWebEnum.showEditSetting
                      ? Expanded(
                          child: EditSettingWeb(),
                        )
                      : dashboardController.dashboardWebEnum.value ==
                              DashboardWebEnum.showUserDetail
                          ? const Expanded(
                              child: UserDetail(),
                            )
                          : dashboardController.dashboardWebEnum.value ==
                                  DashboardWebEnum.showUserDelete
                              ? const Expanded(
                                  child: UserDelete(),
                                )
                              : dashboardController.dashboardWebEnum.value ==
                                      DashboardWebEnum.showNotification
                                  ? const Expanded(
                                      child: NotificationWeb(),
                                    )
                                  : dashboardController.currentWebIndex.value ==
                                          0
                                      ? Expanded(
                                          child: WebAllUsers(),
                                        )
                                      : dashboardController
                                                  .currentWebIndex.value ==
                                              1
                                          ? Expanded(
                                              child: WebUserRequests(),
                                            )
                                          : Expanded(
                                              child: SettingWeb(),
                                            ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}

class CustomAdminTabSelectedButton extends StatelessWidget {
  CustomAdminTabSelectedButton(
      {Key? key,
      required this.isSelected,
      required this.svgPath,
      required this.title,
      required this.onTap})
      : super(key: key);
  final bool isSelected;
  final String svgPath, title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 41.h,
            width: 6.w,
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary : null,
              borderRadius: BorderRadius.circular(kBorderRadius16),
            ),
          ),
          HorizontalSpacer(width: 10.w),
          Expanded(
            child: Container(
              height: 50.h,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : null,
                borderRadius: BorderRadius.circular(15.r),
              ),
              margin: EdgeInsets.only(left: 10.w, right: 16.w),
              padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 16.w),
              child: Row(
                children: [
                  SvgPicture.asset(
                    svgPath,
                    color:
                        isSelected ? AppColors.secondary : AppColors.white500,
                    height: 24.h,
                    width: 24.h,
                  ),
                  HorizontalSpacer(width: 10.w),
                  Text(
                    title,
                    style: AppTextStyle.web3.copyWith(
                      color:
                          isSelected ? AppColors.secondary : AppColors.white500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
