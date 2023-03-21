import 'package:get/get.dart';

import 'controller/dashboard_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => DashboardController(), permanent: true);
  }
}
