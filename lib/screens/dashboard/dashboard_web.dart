import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vip_connect/helper/app_assets.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/helper/app_text_styles.dart';
import 'package:vip_connect/helper/app_texts.dart';
import 'package:vip_connect/screens/components/spacer.dart';

class DashboardWeb extends StatelessWidget {
  DashboardWeb({Key? key}) : super(key: key);
  RxInt currentIndex = 0.obs;
  List<String> titleList = [
    AppTexts.allUsers,
    AppTexts.usersRequests,
    AppTexts.settings
  ];

  List<String> svgPathList = [
    AppAssets.peopleSvg,
    AppAssets.peopleSvg,
    AppAssets.settingsSvg,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1,child: Container(
          color: AppColors.secondary,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 26,horizontal: 46),
                child: Image.asset(AppAssets.logoImg),
              ),
              const VerticalSpacer(height: 8),
              ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context,index){
                      return Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Obx(()=>CustomAdminTabSelectedButton(title: titleList[index],svgPath: svgPathList[index],isSelected: currentIndex.value==index,onTap: (){
                      currentIndex.value = index;
                    },),
                  ),
                );
                    }
                    ),
            ],
          ),
        )),
        Obx(()=>Expanded(flex: 5,child: currentIndex.value == 0 ? Container(color: AppColors.red,) : currentIndex.value == 1? Container(color: AppColors.shimmer2,) : Container(color: AppColors.green,) ,)),
      ],
    );
  }
}

class CustomAdminTabSelectedButton extends StatelessWidget {
  CustomAdminTabSelectedButton({
    Key? key,
    required this.isSelected,
    required this.svgPath,
    required this.title,
    required this.onTap
  }) : super(key: key);
  final bool isSelected;
  final String svgPath, title;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(children: [
        Container(height: 41,width: 6,decoration:  BoxDecoration(
          color: isSelected ?  AppColors.primary: null,
          borderRadius: BorderRadius.circular(15),
        ),),
        const HorizontalSpacer(width: 10),
        Expanded(
          child: Container(height: 50,decoration:  BoxDecoration(
            color: isSelected ? AppColors.primary : null,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 16),
          child: Row(children: [
            SvgPicture.asset(svgPath,color: isSelected ? AppColors.secondary : AppColors.white500 , height: 24,width: 24,),
            const HorizontalSpacer(width: 10),
             Text(title, style: AppTextStyle.web3.copyWith(color: isSelected ? AppColors.secondary : AppColors.white500,),),
          ],),
          ),
        ),
        const HorizontalSpacer(width: 16),
      ],),
    );
  }
}
