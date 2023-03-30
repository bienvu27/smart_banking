import 'package:get/get.dart';

import '../controller/transaction_confirmation_controller.dart';


class TransactionConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => TransactionConfirmationController(), permanent: false);
  }
}
