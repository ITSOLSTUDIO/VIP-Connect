import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vip_connect/controller/dashboard_controller.dart';
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
    const ProfileScreen(),
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
          backgroundColor: AppColors.primary,
          body: IndexedStack(
            index: dashboardController.currentIndex.value,
            children: buildScreens,
          ),
          bottomNavigationBar: Container(
            height: 82.h,
            width: double.infinity,
            // padding: EdgeInsets.only(right: 18.w, bottom: 30.h),
            decoration: const BoxDecoration(
              color: AppColors.primary,
            ),
            child: ListView.builder(
              reverse: true,
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8.7.w),
              itemBuilder: (context, index) => InkWell(
                onTap: () {},
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
