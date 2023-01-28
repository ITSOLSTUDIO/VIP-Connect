import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class LoginScreenWeb extends StatelessWidget {
  const LoginScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Center(
        child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    AppAssets.logoImg,
                    height: 295,
                  ),
                ),
                const HorizontalSpacer(width: 105),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppTexts.signIn, style: AppTextStyle.web1,),
                      const VerticalSpacer(height: 16),
                      Text("Hello James welcome back to your dashboard.", style: AppTextStyle.web2,),
                      const VerticalSpacer(height: 31),
                      CustomTextField(
                        isWeb: true,
                        mainTitle: AppTexts.emailAddress,
                        hintText: "Your email address",
                        filled: true,
                        fillColor: AppColors.primary,
                        prefixWidget: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                          child: SvgPicture.asset(
                            AppAssets.emailFillSvg,
                            height: 24,
                            width: 24,
                          ),
                        ),
                        onSaved: (String? newValue) {},
                        validator: (String? value) {},
                      ),
                      const VerticalSpacer(height: 20),
                      CustomTextField(
                        isWeb: true,
                        mainTitle: AppTexts.password,
                        hintText: "Your password",
                        filled: true,
                        obscureText: true,
                        fillColor: AppColors.primary,
                        prefixWidget: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
                          child: SvgPicture.asset(
                            AppAssets.lockSvg,
                            height: 24,
                            width: 24,
                          ),
                        ),
                        onSaved: (String? newValue) {},
                        validator: (String? value) {},
                      ),
                      const VerticalSpacer(height: 90),
                      CommonButton(
                        isWeb: true,
                        title: AppTexts.login,
                        iconData: '',
                        isFill: true,
                        isIconVisible: false,
                        onPressed: () {
                          Get.toNamed(routeDashboardWeb);
                        },
                        iconColor: AppColors.transparent,
                        buttonShouldDisable: false,
                      ),

                    ],
                  ),
                ),
                const HorizontalSpacer(width: 130),
              ],
            ),
      ),
    );
  }
}
