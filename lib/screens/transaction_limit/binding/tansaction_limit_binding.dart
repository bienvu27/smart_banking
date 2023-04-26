import 'package:get/get.dart';
import '../controller/transaction_limit_controller.dart';

class TransactionLimitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => TransactionLimitController(), permanent: false);
  }
}
