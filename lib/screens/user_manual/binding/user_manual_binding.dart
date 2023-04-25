import 'package:get/get.dart';
import '../controller/user_manual_controller.dart';

class UserManualBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => UserManualController(), permanent: false);
  }
}
