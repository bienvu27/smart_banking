import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/strings.dart';

class TransferController extends GetxController {
  bool isSwitched = true;
  TabController? tabController;
  String? titleDialog;

  toggle(){
    isSwitched = !isSwitched;
    update();
  }
  TextEditingController textController = TextEditingController() ;
  TextEditingController textController2 = TextEditingController() ;
  String? title = '', image, subTitle;
  String? number, name;

  void log(String title, String image, subTitle){
    textController.text = title;
    this.image = image;
    this.title = title;
    this.subTitle = subTitle;
    print('ssss $title');
    print('xxxx $textController.text');
    update();
  }

  void contactsManager(String number, String name){
    textController2.text = number;
    this.number = number;
    this.name = name;
    update();
  }


  checkIndex(int index){
    if(index == 0){
      textController.clear();
      textController2.clear();
      this.image = '';
      this.title = '';
      this.name = '';
      this.number = '';
    }else if(index == 2){
      textController.clear();
      textController2.clear();
      this.image = '';
      this.title = '';
      this.name = '';
      this.number = '';
    }
    update();
  }
  setTitleDialog(int index){
    if(index == 0){
      titleDialog = TITLE_69;
    }else if(index == 1){
      titleDialog = TITLE_70;
    }else{
      titleDialog = TITLE_71;
    }
  }

}