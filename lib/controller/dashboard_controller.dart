import 'dart:developer';

import 'package:get/get.dart';
import 'package:vip_connect/utils/util.dart';

enum DashboardWebEnum {
  //Basic DashBoard Screen
  showAllUsers,
  showUserRequests,
  showSettings,

  //ShowAllUsers
  showUserDetail,
  showUserDelete,
  //ShowSettings,
  showSetting,
  showEditSetting,

  //Notification
  showNotification
}

class DashboardController extends GetxController implements GetxService {
  RxInt currentIndex = 0.obs;
  RxInt currentWebIndex = 0.obs;
  Rx<DashboardWebEnum> dashboardWebEnum = DashboardWebEnum.showAllUsers.obs;
  RxBool isLoading = false.obs;

  updateCurrentIndex(int value) {
    if (value != 2) {
      currentIndex.value = value;
      update();
    } else {
      Util.showAddPostBottomSheet();
    }
  }

  updateCurrentWebIndex(int value) {
    currentWebIndex.value = value;
    if (value == 0) {
      dashboardWebEnum.value = DashboardWebEnum.showAllUsers;
    } else if (value == 1) {
      dashboardWebEnum.value = DashboardWebEnum.showUserRequests;
    } else {
      dashboardWebEnum.value = DashboardWebEnum.showSettings;
    }
    update();
    log("dashboardWebEnum =${dashboardWebEnum.value}");
  }

  updateDashboardWebEnum(DashboardWebEnum value) {
    log("dashboardWebEnum =${dashboardWebEnum.value}");
    dashboardWebEnum.value = value;
    update();
  }

  updateIsLoading(bool value) {
    isLoading.value = value;
    update();
  }
}
