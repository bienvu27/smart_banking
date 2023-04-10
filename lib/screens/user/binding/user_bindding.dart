import 'package:get/get.dart';

import '../controller/user_controller.dart';


class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => UserController(), permanent: false);
  }
}
