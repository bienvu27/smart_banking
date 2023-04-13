import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransferController extends GetxController {
  bool isSwitched = false;
  TabController? tabController;

  toggle(){
    isSwitched = !isSwitched;
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

  checkIndex(int index){
    if(index == 0){
      textController.clear();
      this.image = '';
      this.title = '';
    }else if(index == 2){
      textController.clear();
      this.image = '';
      this.title = '';
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

}