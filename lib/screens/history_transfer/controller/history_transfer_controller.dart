import 'package:get/get.dart';

class HistoryTransferController extends GetxController{
  bool isChecked = false;
  void toggleCheckbox(bool value){
    isChecked = !isChecked;
    update();
  }
}