import 'package:get/get.dart';
import 'package:vip_connect/utils/util.dart';

class DashboardController extends GetxController implements GetxService {
  RxInt currentIndex = 0.obs;
  RxBool isLoading = false.obs;

  updateCurrentIndex(int value) {
    if (value != 2) {
      currentIndex.value = value;
      update();
    } else {
      Util.showAddPostBottomSheet();
    }
  }

  updateIsLoading(bool value) {
    isLoading.value = value;
    update();
  }
}
