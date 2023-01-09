import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/screens/components/background_design.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(routeOnBoarding);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: BackgroundDesign(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Image.asset(
              AppAssets.logoImg,
              height: 192.h,
              width: 340.w,
            ),
          ],
        ),
      ),
    );
  }
}
