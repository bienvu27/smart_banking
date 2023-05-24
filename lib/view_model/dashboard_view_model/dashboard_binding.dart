import 'package:get/get.dart';

import 'dashboard_view_model.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => DashboardViewModel(), permanent: true);
  }
}
