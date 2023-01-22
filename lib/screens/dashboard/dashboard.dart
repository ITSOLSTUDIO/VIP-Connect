import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/controller/dashboard_controller.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/screens/dashboard/screen/arena_screen.dart';
import 'package:vip_connect/screens/dashboard/screen/chats_screen.dart';
import 'package:vip_connect/screens/dashboard/screen/profile_screen.dart';
import 'package:vip_connect/screens/dashboard/screen/vip_screen.dart';

import '../../helper/app_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Widget> buildScreens = [
    const ArenaScreen(),
    const ChatsScreen(),
    Container(),
    const VipScreen(),
    ProfileScreen(),
  ];

  List<String> svgLists = [
    AppAssets.maskGroup3Svg,
    AppAssets.messageSvg,
    AppAssets.addSquareSvg,
    AppAssets.maskGroup4Svg,
    AppAssets.menuSvg,
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashboardController) {
      return WillPopScope(
        onWillPop: () async {
          if (dashboardController.currentIndex.value != 0) {
            dashboardController.updateCurrentIndex(0);
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          backgroundColor: AppColors.secondary,
          body: IndexedStack(
            index: dashboardController.currentIndex.value,
            children: buildScreens,
          ),
          bottomNavigationBar: Container(
            height: 82.h,
            width: double.infinity,
            // padding: EdgeInsets.only(right: 18.w, bottom: 30.h),
            decoration: BoxDecoration(
              color: AppColors.black800,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: svgLists.map((e) {
                int index = svgLists.indexOf(e);
                return InkWell(
                  onTap: () {
                    dashboardController.updateCurrentIndex(index);
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: SvgPicture.asset(
                    svgLists[index],
                    color: dashboardController.currentIndex.value == index
                        ? AppColors.primary
                        : AppColors.white500,
                    height: 24.h,
                    width: 24.w,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      );
    });
  }
}
