import 'package:get/get.dart';
import 'package:smart_banking/module/home/controller/home_controller.dart';

class HomedBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => HomeController(), permanent: false);
  }
}
