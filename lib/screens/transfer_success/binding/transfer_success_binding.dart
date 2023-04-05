import 'package:get/get.dart';
import '../controller/transfer_success_controller.dart';


class TransferSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => TransferSuccessController(), permanent: false);
  }
}
