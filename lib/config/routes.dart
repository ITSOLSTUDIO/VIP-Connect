import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vip_connect/screens/authentication/forget_screen.dart';
import 'package:vip_connect/screens/authentication/login_screen.dart';
import 'package:vip_connect/screens/authentication/new_password_screen.dart';
import 'package:vip_connect/screens/authentication/otp_screen.dart';
import 'package:vip_connect/screens/authentication/sign_up_screen.dart';
import 'package:vip_connect/screens/dashboard/dashboard.dart';
import 'package:vip_connect/screens/onboarding/onboarding.dart';
import 'package:vip_connect/utils/keyboard_dismiss.dart';

import '../screens/splash/splash.dart';

const routeSplash = '/routeSplash';
const routeOnBoarding = '/routeOnBoarding';
const routeLogin = '/routeLogin';
const routeForgetPassword = '/routeForgetPassword';
const routeOtp = '/routeOtp';
const routeNewPassword = '/routeNewPassword';
const routeSignUp = '/routeSignUp';
const routeDashboard = '/routeDashboard';

class Routes {
  static final routes = [
    GetPage(name: routeSplash, page: () => const TKDismiss(SplashScreen())),
    GetPage(name: routeOnBoarding, page: () => TKDismiss(OnBoardingScreen())),
    GetPage(name: routeLogin, page: () => const TKDismiss(LoginScreen())),
    GetPage(
        name: routeForgetPassword,
        page: () => const TKDismiss(ForgetPasswordScreen())),
    GetPage(name: routeOtp, page: () => const TKDismiss(OtpScreen())),
    GetPage(
        name: routeNewPassword,
        page: () => const TKDismiss(NewPasswordScreen())),
    GetPage(name: routeSignUp, page: () => TKDismiss(SignUpScreen())),
    GetPage(name: routeDashboard, page: () => const TKDismiss(Dashboard())),
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
