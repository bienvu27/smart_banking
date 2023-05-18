import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtherSettingsController extends GetxController {
  String? name = "haha";
  bool pin = false;
  bool createPin = false;
  String textError = "";
  String pinExist = "";

  Timer? timer;
  int start = 30;

  checkPinExist(String title){
    pinExist = title;
    update();
  }

  checkErrorText(String text) {
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

  createPinValue(bool pinValue){
    createPin = pinValue;
    update();
  }

  void startTimer(BuildContext context) {
    timer?.cancel();
    start = 30;
    const oneSec = const Duration(seconds: 1);
    timer = new Timer.periodic(
      oneSec,
      (timer) {
        if (start == 0 ) {
          timer.cancel();
          Navigator.pop(context);
        } else {
          start--;
        }
        update();
      },
    );
  }


  @override
  void onInit() {
    super.onInit();
  }
}
