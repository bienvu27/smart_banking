import 'package:get/get.dart';
import '../controller/all_contacts_controller.dart';

class AllContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => AllContactsController(), permanent: true);
  }
}
