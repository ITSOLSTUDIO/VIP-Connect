import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vip_connect/screens/onboarding/onboarding.dart';
import 'package:vip_connect/utils/keyboard_dismiss.dart';

import '../screens/splash/splash.dart';

const routeSplash = '/routeSplash';
const routeOnBoarding = '/routeOnBoarding';

class Routes {
  static final routes = [
    GetPage(name: routeSplash, page: () => const TKDismiss(SplashScreen())),
    GetPage(
        name: routeOnBoarding, page: () => const TKDismiss(OnBoardingScreen())),
  ];
}

// Tap Keyboard dismiss
class TKDismiss extends StatelessWidget {
  const TKDismiss(this.child, {Key? key}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(child: child);
  }
}
