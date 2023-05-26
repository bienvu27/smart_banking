import 'package:get/get.dart';
import 'package:smart_banking/view_model/home_view_model/home_view_model.dart';

class HomedBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => HomeController(), permanent: false);
  }
}
