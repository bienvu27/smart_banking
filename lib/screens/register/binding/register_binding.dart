import 'package:get/get.dart';
import 'package:smart_banking/screens/register/controller/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => RegisterPageController(), permanent: true);
  }
}
