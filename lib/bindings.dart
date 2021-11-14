import 'package:get/get.dart';
import 'package:state_management/getx/controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyController());
  }
}
