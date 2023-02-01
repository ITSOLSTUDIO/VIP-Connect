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
import 'package:vip_connect/screens/components/common_button.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/custom_textfield.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class CreatePollScreen extends StatefulWidget {
  CreatePollScreen({Key? key}) : super(key: key);

  @override
  State<CreatePollScreen> createState() => _CreatePollScreenState();
}

class _CreatePollScreenState extends State<CreatePollScreen> {
  String dropdownValue = '1 day';
  RxBool showPollPostView = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: customAppBar(title: AppTexts.createAPoll),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpacer(height: 24.h),
            Obx(
              () => showPollPostView.isFalse
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          mainTitle: AppTexts.yourQuestion,
                          hintText: AppTexts.addQuestion,
                          maxLines: 4,
                          filled: true,
                          fillColor: AppColors.primary,
                          onSaved: (String? newValue) {},
                          validator: (String? value) {},
                        ),
                        VerticalSpacer(height: 8.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "0/140",
                            style: AppTextStyle.popping12_300.copyWith(
                              color: AppColors.white500,
                            ),
                          ),
                        ),
                        VerticalSpacer(height: 18.h),
                        CustomTextField(
                          mainTitle: "${AppTexts.option} 1",
                          hintText: AppTexts.addOption,
                          filled: true,
                          fillColor: AppColors.primary,
                          onSaved: (String? newValue) {},
                          validator: (String? value) {},
                        ),
                        VerticalSpacer(height: 8.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "0/30",
                            style: AppTextStyle.popping12_300.copyWith(
                              color: AppColors.white500,
                            ),
                          ),
                        ),
                        VerticalSpacer(height: 18.h),
                        CustomTextField(
                          mainTitle: "${AppTexts.option} 2",
                          hintText: AppTexts.addOption,
                          filled: true,
                          fillColor: AppColors.primary,
                          onSaved: (String? newValue) {},
                          validator: (String? value) {},
                        ),
                        VerticalSpacer(height: 8.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "0/30",
                            style: AppTextStyle.popping12_300.copyWith(
                              color: AppColors.white500,
                            ),
                          ),
                        ),
                        VerticalSpacer(height: 9.h),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.h, horizontal: 23.w),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.circular(kBorderRadius20),
                              border: Border.all(color: AppColors.border),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(
                                  AppAssets.plusSvg,
                                  color: AppColors.secondary,
                                  height: 24.h,
                                  width: 24.w,
                                ),
                                HorizontalSpacer(width: 5.w),
                                Text(
                                  AppTexts.addOption,
                                  style: AppTextStyle.bodyMedium
                                      .copyWith(color: AppColors.secondary),
                                )
                              ],
                            ),
                          ),
                        ),
                        VerticalSpacer(height: 18.h),
                        Text(
                          AppTexts.pollDuration,
                          style: AppTextStyle.bodyRegular
                              .copyWith(color: AppColors.primary),
                        ),
                        VerticalSpacer(height: 13.h),
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
                          items: <String>[
                            '1 day',
                            '3 days',
                            '7 days',
                            '2 weeks'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        VerticalSpacer(height: 35.h),
                        Row(
                          children: [
                            SizedBox(
                              height: 35.h,
                              width: 35.h,
                              child: Image.asset(
                                AppAssets.tempProfileImg,
                              ),
                            ),
                            HorizontalSpacer(width: 10.w),
                            Text(
                              "Jonathan Cooper",
                              style: AppTextStyle.popping12_300
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        VerticalSpacer(height: 24.h),
                        Text(
                          AppTexts.writeSomeThing,
                          style: AppTextStyle.bodyMedium
                              .copyWith(color: AppColors.white500),
                        ),
                        VerticalSpacer(height: 24.h),
                        Container(
                          height: 404.h,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kBorderRadius20),
                            border: Border.all(color: AppColors.white500),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 26.h, left: 24.w),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Lorem ipsum dolor adipiscing elit, sed do tempor incidi dunt ut",
                                        style: AppTextStyle.popping16_400,
                                      ),
                                    ),
                                    IconButton(
                                      splashRadius: 20,
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        AppAssets.editSvg,
                                        height: 24.h,
                                        width: 24.w,
                                      ),
                                    ),
                                    IconButton(
                                      splashRadius: 20,
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        AppAssets.trashSvg,
                                        height: 24.h,
                                        width: 24.w,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              VerticalSpacer(height: 20.h),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 19.w, vertical: 5.h),
                                    child: CommonButton(
                                      title: "${AppTexts.option} ${index + 1}",
                                      textColor: AppColors.primary,
                                      borderColor: AppColors.white500,
                                      iconData: '',
                                      isFill: false,
                                      isIconVisible: false,
                                      onPressed: () {
                                        print("Pressed ${index + 1}");
                                      },
                                      iconColor: AppColors.transparent,
                                      buttonShouldDisable: false,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        VerticalSpacer(height: 21.h),
                      ],
                    ),
            ),
            VerticalSpacer(height: 24.h),
            CommonButton(
              title: AppTexts.post,
              iconData: '',
              isFill: true,
              isIconVisible: false,
              iconColor: AppColors.transparent,
              buttonShouldDisable: false,
              onPressed: () {
                if (showPollPostView.isFalse) {
                  showPollPostView.value = true;
                } else {
                  Get.find<DashboardController>().updateCurrentIndex(0);
                  Get.back();
                }
                // Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
