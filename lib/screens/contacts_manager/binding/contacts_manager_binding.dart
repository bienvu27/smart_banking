import 'package:get/get.dart';
import '../controller/contacts_manager_controller.dart';

class ContactsManagerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => ContactsManagerController(), permanent: false);
  }
}
