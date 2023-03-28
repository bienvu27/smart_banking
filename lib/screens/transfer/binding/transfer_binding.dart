import 'package:get/get.dart';
import '../controller/transfer_controller.dart';

class TransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => TransferController(), permanent: false);
  }
}
