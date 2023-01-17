import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vip_connect/screens/authentication/forget_screen.dart';
import 'package:vip_connect/screens/authentication/login_screen.dart';
import 'package:vip_connect/screens/authentication/new_password_screen.dart';
import 'package:vip_connect/screens/authentication/otp_screen.dart';
import 'package:vip_connect/screens/authentication/sign_up_screen.dart';
import 'package:vip_connect/screens/dashboard/dashboard.dart';
import 'package:vip_connect/screens/dashboard/screen/profile_screen_subscreens/change_email_screen.dart';
import 'package:vip_connect/screens/dashboard/screen/profile_screen_subscreens/change_password_screen.dart';
import 'package:vip_connect/screens/dashboard/screen/profile_screen_subscreens/invite_friend_screen.dart';
import 'package:vip_connect/screens/dashboard/screen/profile_screen_subscreens/privacy_policy_screen.dart';
import 'package:vip_connect/screens/dashboard/screen/profile_screen_subscreens/update_profile_screen.dart';
import 'package:vip_connect/screens/dashboard/screen/vip_screen_subscreen/vip_detail.dart';
import 'package:vip_connect/screens/onboarding/onboarding.dart';
import 'package:vip_connect/screens/post/share_post.dart';
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
const routeSharePost = '/routeSharePost';
const routeVipDetail = '/routeVipDetail';
const routeChangeEmail = '/routeChangeEmail';
const routeChangePassword = '/routeChangePassword';
const routeInviteFriend = '/routeInviteFriend';
const routePrivacyPolicy = '/routePrivacyPolicy';
const routeUpdateProfile = '/routeUpdateProfile';

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
    GetPage(
        name: routeSharePost, page: () => const TKDismiss(SharePostScreen())),
    GetPage(name: routeVipDetail, page: () => const TKDismiss(VipDetail())),
    GetPage(
        name: routeChangeEmail,
        page: () => const TKDismiss(ChangeEmailScreen())),
    GetPage(
        name: routeChangePassword,
        page: () => const TKDismiss(ChangePasswordScreen())),
    GetPage(
        name: routeInviteFriend,
        page: () => const TKDismiss(InviteFriendScreen())),
    GetPage(
        name: routePrivacyPolicy,
        page: () => const TKDismiss(PrivacyPolicyScreen())),
    GetPage(
        name: routeUpdateProfile, page: () => TKDismiss(UpdateProfileScreen())),
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
