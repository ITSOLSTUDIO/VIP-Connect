import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Base Urls
const String kDevBaseUrl = "http://crd001.seriousducklings.agency/api/v1/";
// const String kDevBaseUrlSimple = "https://wag001.4spotsdemo.com/";
//
const String kLiveBaseUrl = "http://crd001.seriousducklings.agency/api/v1/";
// const String kLiveBaseUrlSimple = "https://wagalag.com/";

//Constant Strings
const assetsImage = "assets/image/";
const assetsSvg = "assets/svg/";
const assetsGif = "assets/gif/";
const assetsIcon = "assets/icon/";

//Constant String
const kCitizenRole = "citizen";

// Font Sizes
final double kFontSize8 = 8.sp;
final double kFontSize10 = 10.sp;
final double kFontSize11 = 11.sp;
final double kFontSize12 = 12.sp;
final double kFontSize14 = 14.sp;
final double kFontSize15 = 15.sp;
final double kFontSize16 = 16.sp;
final double kFontSize18 = 18.sp;
final double kFontSize20 = 20.sp;
final double kFontSize22 = 22.sp;
final double kFontSize24 = 24.sp;
final double kFontSize26 = 26.sp;
final double kFontSize28 = 28.sp;
final double kFontSize30 = 30.sp;
final double kFontSize34 = 34.sp;

// Radius
final double kBorderRadius4 = 4.r;
final double kBorderRadius6 = 6.r;
final double kBorderRadius8 = 8.r;
final double kBorderRadius10 = 10.r;
final double kBorderRadius11 = 11.r;

final double kBorderRadius16 = 16.r;
final double kBorderRadius20 = 20.r;
final double kBorderRadius22 = 22.r;
final double kBorderRadius24 = 24.r;
final double kBorderRadius40 = 40.r;

final double kBorderRadius50 = 50.r;

final List<BoxShadow> kContainerShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.2),
    spreadRadius: 4.r,
    blurRadius: 10.r,
    offset: Offset(5.w, 10.h), // changes position of shadow
  ),
];
