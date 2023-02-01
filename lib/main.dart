import 'package:flutter/foundation.dart' as isWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vip_connect/helper/app_colors.dart';
import 'package:vip_connect/theme/themes.dart';
import 'package:vip_connect/utils/util.dart';

import 'config/routes.dart';
import 'helper/get_di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.secondary,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.secondary,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: ScreenUtilInit(
        builder: ((context, child) {
          final easyLoading = EasyLoading.init();
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              ScreenUtil.init(
                context,
                designSize:
                    isWeb.kIsWeb ? Size(1440, 1082) : const Size(375, 812),
              );
              child = easyLoading(context, child);
              Util.setEasyLoading();
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child,
              );
            },
            theme: kAppTheme,
            getPages: Routes.routes,
            initialRoute: GetPlatform.isWeb ? routeLoginWeb : routeSplash,
            defaultTransition: Transition.native,
            transitionDuration: const Duration(milliseconds: 400),
            // initialRoute: AddPetsScreen.routeName,
          );
        }),
      ),
    );
  }
}
