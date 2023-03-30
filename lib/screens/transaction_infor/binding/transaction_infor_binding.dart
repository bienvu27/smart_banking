import 'package:get/get.dart';
import '../controller/transaction_infor_controller.dart';

class TransactionInforBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => TransactionInforController(), permanent: false);
  }
}
