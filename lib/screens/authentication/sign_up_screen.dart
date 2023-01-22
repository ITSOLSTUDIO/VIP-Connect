import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vip_connect/config/routes.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? dropdownValue = "Entertainment/Amusement Parks";
  bool addIndustryField = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: customAppBar(title: AppTexts.signUp),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacer(height: 24.h),
            Text(
              "Create Account",
              style: AppTextStyle.bodyRegular.copyWith(
                color: AppColors.disableText,
              ),
            ),
            VerticalSpacer(height: 24.h),
            CustomTextField(
              mainTitle: AppTexts.firstName,
              hintText: AppTexts.firstName,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.lastName,
              hintText: AppTexts.lastName,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.jobTitle,
              hintText: AppTexts.jobTitle,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.employer,
              hintText: AppTexts.employer,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.addBio,
              hintText: AppTexts.addExperience,
              maxLines: 4,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            Text(
              AppTexts.addIndustry,
              style:
                  AppTextStyle.bodyRegular.copyWith(color: AppColors.primary),
            ),
            VerticalSpacer(height: 10.h),
            DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.primary,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.primary,
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                filled: true,
                fillColor: AppColors.primary,
              ),
              dropdownColor: AppColors.primary,
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              isExpanded: true,
              items: <String>[
                "Entertainment/Amusement Parks",
                "Professional Sports",
                "3PL",
                "Aviation",
                "Public Safety",
                "Automotive",
                "Construction",
                "Cannabis",
                "Oil & Gas",
                "Telecommunication",
                "Critical Infrastructure",
                "Transportation",
                "Technology",
                "Government",
                "Hospitality",
                "Security/Surveillance",
                "IT",
                "Marketing",
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              }).toList(),
            ),
            VerticalSpacer(height: 10.h),
            if (addIndustryField == false)
              InkWell(
                onTap: () {
                  setState(() {
                    addIndustryField = true;
                  });
                },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20.r,
                      icon: Icon(
                        Icons.add,
                        size: 24.r,
                        color: AppColors.primary,
                      ),
                    ),
                    HorizontalSpacer(width: 2.w),
                    Text(
                      AppTexts.addIndustry,
                      style: AppTextStyle.bodyRegular.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: kFontSize14,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            if (addIndustryField)
              CustomTextField(
                mainTitle: AppTexts.addIndustryName,
                hintText: AppTexts.industryName,
                filled: true,
                fillColor: AppColors.primary,
                onSaved: (String? newValue) {},
                validator: (String? value) {},
              ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.enterEmail,
              hintText: AppTexts.enterEmail,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.password,
              hintText: "Enter ${AppTexts.password}",
              obscureText: true,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 10.h),
            CustomTextField(
              mainTitle: AppTexts.confirmPassword,
              hintText: AppTexts.confirmPassword,
              obscureText: true,
              filled: true,
              fillColor: AppColors.primary,
              onSaved: (String? newValue) {},
              validator: (String? value) {},
            ),
            VerticalSpacer(height: 24.h),
            CommonButton(
              title: AppTexts.signUp,
              iconData: '',
              isFill: true,
              isIconVisible: false,
              onPressed: () {
                Get.toNamed(routeOtp);
              },
              iconColor: AppColors.transparent,
              buttonShouldDisable: false,
            ),
            VerticalSpacer(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppTexts.alreadyHaveAccount,
                  style: AppTextStyle.bodyRegular.copyWith(
                    color: AppColors.disableText,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(routeLogin);
                  },
                  child: Text(
                    " ${AppTexts.login}",
                    style: AppTextStyle.bodyMedium.copyWith(
                      color: AppColors.button,
                    ),
                  ),
                ),
              ],
            ),
            VerticalSpacer(height: 24.h),
          ],
        ),
      ),
    );
  }
}
