import 'package:get/get.dart';

class RegisterPageController extends GetxController{
  bool isChecked = false;
  void toggleCheckbox(bool value){
    isChecked = !isChecked;
    update();
  }
}