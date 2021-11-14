import 'package:get/get.dart';

class MyController extends GetxController {
  // default value with 0
  RxInt counter = 0.obs;

  void increment() {
    counter.value++;
    if (counter.value % 5 == 0) {
      // UI part without context
      Get.snackbar("Title", 'Reached ${counter.value}');
    }
  }
}
