import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vip_connect/constants.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/model/ChatMessageModel.dart';
import 'package:vip_connect/screens/components/custom_appbar.dart';
import 'package:vip_connect/screens/components/spacer.dart';
import 'package:vip_connect/utils/util.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({Key? key}) : super(key: key);

  List<ChatMessageModel> dummyMessageList = [
    ChatMessageModel(from: "me", message: "Hi, Castro"),
    ChatMessageModel(from: "other", message: "Hmm, eveything is fine"),
    ChatMessageModel(
        from: "me", message: "I am doing great! How are you today?"),
    ChatMessageModel(from: "other", message: "Hmm, eveything is fine"),
    ChatMessageModel(from: "me", message: "WOW! Amazing country"),
    ChatMessageModel(from: "me", message: "Hi, Castro"),
    ChatMessageModel(from: "other", message: "Hmm, eveything is fine"),
    ChatMessageModel(
        from: "me", message: "I am doing great! How are you today?"),
    ChatMessageModel(from: "other", message: "Hmm, eveything is fine"),
    ChatMessageModel(from: "me", message: "WOW! Amazing country")
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: AppTexts.chats),
      backgroundColor: AppColors.secondary,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            bottom: MediaQuery.of(context).viewInsets.bottom == 0
                ? 22.h
                : MediaQuery.of(context).viewInsets.bottom),
        child: TextFormField(
          maxLines: 1,
          decoration: InputDecoration(
            fillColor: AppColors.white500,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            hintStyle:
                AppTextStyle.bodyRegular.copyWith(color: AppColors.hintText),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            hintText: AppTexts.typeAMessage,
            prefixIcon: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(
                  top: 16.h,
                  left: 15.w,
                  bottom: 16.h,
                  right: 10.w,
                ),
                child: SvgPicture.asset(
                  AppAssets.smileSvg,
                  color: AppColors.icons1,
                  height: 18.h,
                  width: 18.w,
                ),
              ),
            ),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    print("Tapped");
                  },
                  child: SvgPicture.asset(
                    AppAssets.micSvg,
                    color: AppColors.icons1,
                    height: 18.h,
                    width: 10.w,
                  ),
                ),
                HorizontalSpacer(width: 10.w),
                GestureDetector(
                  onTap: () {
                    Util.showAttachmentBottomSheet();
                  },
                  child: SvgPicture.asset(
                    AppAssets.attachmentSvg,
                    color: AppColors.icons1,
                    height: 18.h,
                    width: 14.w,
                  ),
                ),
                HorizontalSpacer(width: 10.w),
                GestureDetector(
                  onTap: () {
                    print("Tapped");
                  },
                  child: SvgPicture.asset(
                    AppAssets.sendSvg,
                    color: AppColors.icons1,
                    height: 14.h,
                    width: 18.w,
                  ),
                ),
                HorizontalSpacer(width: 20.w),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: dummyMessageList.length,
          itemBuilder: (context, index) {
            return Align(
              alignment: dummyMessageList[index].from == "me"
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: dummyMessageList[index].from == "me"
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 284.w),
                    margin: EdgeInsets.symmetric(vertical: 4.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: dummyMessageList[index].from == "me"
                          ? AppColors.blackHalfText
                          : AppColors.white500,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.r),
                        topLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(
                            dummyMessageList[index].from == "me" ? 0 : 10.r),
                        bottomLeft: Radius.circular(
                            dummyMessageList[index].from == "me" ? 10.r : 0.r),
                      ),
                    ),
                    child: Text(
                      dummyMessageList[index].message ?? "",
                      textAlign: dummyMessageList[index].from == "me"
                          ? TextAlign.right
                          : TextAlign.left,
                      style: AppTextStyle.popping12_400,
                    ),
                  ),
                  if (dummyMessageList.length > (index + 1)) ...{
                    if (dummyMessageList[index].from == "me"
                        ? dummyMessageList[index + 1].from != "me"
                        : dummyMessageList[index + 1].from == "me")
                      Text(
                        "14:30",
                        textAlign: dummyMessageList[index].from == "me"
                            ? TextAlign.right
                            : TextAlign.left,
                        style: AppTextStyle.popping12_400
                            .copyWith(color: AppColors.white300),
                      ),
                  } else ...{
                    Text(
                      "14:30",
                      textAlign: dummyMessageList[index].from == "me"
                          ? TextAlign.right
                          : TextAlign.left,
                      style: AppTextStyle.popping12_400
                          .copyWith(color: AppColors.white300),
                    ),
                  }
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomChatListTile extends StatelessWidget {
  CustomChatListTile({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              height: 66.h,
              width: 66.h,
              child: CircleAvatar(
                child: Image.asset(AppAssets.tempProfileImg),
              ),
            ),
            HorizontalSpacer(width: 15.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Team Align",
                    style: AppTextStyle.bodyMedium,
                  ),
                  VerticalSpacer(height: 5.h),
                  Text(
                    "Don’t miss to attend the meeting.",
                    style: AppTextStyle.bodyRegular
                        .copyWith(fontSize: kFontSize14),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  "2 min ago",
                  style: AppTextStyle.bodyRegular.copyWith(
                    fontSize: kFontSize14,
                  ),
                ),
                VerticalSpacer(height: 10.h),
                SizedBox(
                  height: 22.h,
                  width: 22.h,
                  child: CircleAvatar(
                    backgroundColor: AppColors.black400,
                    child: Text(
                      "3",
                      style: AppTextStyle.bodyRegular.copyWith(
                        fontSize: kFontSize13,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
