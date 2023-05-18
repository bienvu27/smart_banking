import 'package:flutter/services.dart';

class Entrust {
  static const platform = MethodChannel('entrust.sdk.dev/flutter');
  String valueText = "";

  Future<void> exportPinFlutterToNative(String enterCode) async {
    final String arg1 = valueText;
    try {
      final package = await platform.invokeMethod("enter_pin", {"enter_code": arg1});
      print(package);
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }
}