import 'package:get/get.dart';

import '../controller/web_view_controller.dart';



class WebViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => WebViewPageController(), permanent: false);
  }
}
