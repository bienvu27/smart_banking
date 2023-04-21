import 'package:get/get.dart';

import '../controller/card_service_controller.dart';


class CardServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => CardServiceController(), permanent: true);
  }
}
