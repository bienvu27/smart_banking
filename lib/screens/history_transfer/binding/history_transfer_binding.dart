import 'package:get/get.dart';
import '../controller/history_transfer_controller.dart';

class HistoryTransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => HistoryTransferController(), permanent: false);
  }
}
