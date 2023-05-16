import 'dart:async';

import 'package:get/get.dart';

class OtherSettingsController extends GetxController {
  String? name = "haha";
  bool pin = false;

  setText(title) {
    name = title;
    update();
  }

  checkPin(bool pinValue) {
    pin = pinValue;
    update();
  }

  Timer? timer;
  int start = 30;

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
}
