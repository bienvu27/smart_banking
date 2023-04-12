import 'package:get/get.dart';

class AddContactsController extends GetxController {
  String _orderType = '1';
  String title = 'Chuyển tiền nội bộ VRB' ;
  String get orderType => _orderType;

  void setOrderType(String type) {
    _orderType = type;
    update();
  }
}