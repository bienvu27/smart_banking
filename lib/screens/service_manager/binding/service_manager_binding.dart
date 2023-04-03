import 'package:get/get.dart';

import '../controller/service_manager_controller.dart';

class ServiceManagerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => ServiceManagerController(), permanent: true);
  }
}
