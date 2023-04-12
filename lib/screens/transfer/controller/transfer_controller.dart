import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TransferController extends GetxController {
  bool isSwitched = false;

  toggle(bool switched){
    isSwitched = !switched;
    update();
  }
  TextEditingController textController = TextEditingController() ;
  String? title, image, subTitle;
  void log(String title, String image, subTitle){
    textController.text = title;
    this.image = image;
    this.title = title;
    this.subTitle = subTitle;
    print('ssss $title');
    print('xxxx $textController.text');
    update();
  }

}