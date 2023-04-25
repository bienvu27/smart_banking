import 'package:get/get.dart';

class ContactBankController extends GetxController{
  bool showHide = true;
  void visibility(){
    showHide = !showHide;
    update();
  }
}