import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> init() async {
  // Controller
  // Get.lazyPut(() => AuthController());

  await Hive.initFlutter();

  // Hive.registerAdapter<UserModel>(UserModelAdapter());
  //
  // await Hive.openBox<UserModel>(AppTexts.hiveUserModel);
  // await Hive.openBox(AppTexts.hiveIsLogin);
  // await Hive.openBox(AppTexts.hiveIsGuest);
  // await Hive.openBox(AppTexts.hiveToken);
  // await Hive.openBox(AppTexts.hiveCurrentWorkingUrl);

  FlutterNativeSplash.remove();
}
