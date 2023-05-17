import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtherSettingsController extends GetxController {
  String? name = "haha";
  bool pin = false;
  String textError = "";

  Timer? timer;
  int start = 30;


  checkErrorText(String text){
    textError = text;
    update();
  }

  setText(title) {
    name = title;
    update();
  }

  checkPin(bool pinValue) {
    pin = pinValue;
    update();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (start == 0) {
            timer.cancel();
        } else {
            start--;
        }
        update();
      },
    );
  }

  void offBottomSheet(BuildContext context){
    if(start == 0){
      Navigator.pop(context);
      update();
      // Navigator.of(context).pop();
    }

  }
}
