import 'package:get/get.dart';

import '../controller/questions_controller.dart';

class QuestionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => QuesionsController(), permanent: true);
  }
}
