import 'package:get/get.dart';

import '../controller/card_mobile_controller.dart';

class CardMobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => CardMobileController(), permanent: true);
  }
}
