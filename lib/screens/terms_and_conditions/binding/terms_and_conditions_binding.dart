import 'package:get/get.dart';

import '../controller/terms_and_conditions_controller.dart';

class TermsAndConditionsBindig extends Bindings {
  @override
  void dependencies() {
    Get.put(() => TermsAndConditionsController(), permanent: false);
  }
}
