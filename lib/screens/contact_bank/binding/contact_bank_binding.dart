import 'package:get/get.dart';

import '../controller/contact_bank_controller.dart';

class ContactBankBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => ContactBankController(), permanent: false);
  }
}
