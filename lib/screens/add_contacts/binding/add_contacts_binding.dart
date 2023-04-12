import 'package:get/get.dart';

import '../controller/add_contacts_controller.dart';


class AddContactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => AddContactsController(), permanent: true);
  }
}
