import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/app_bar/app_bar_component.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../components/other_settings_button.dart';

class OtherSettings extends StatefulWidget {
  const OtherSettings({Key? key}) : super(key: key);

  @override
  State<OtherSettings> createState() => _OtherSettingsState();
}

class _OtherSettingsState extends State<OtherSettings> {
  static const platform = MethodChannel('entrust.sdk.dev/flutter');

  Future<void> testEntrust() async {
    try {
      final package =
      await platform.invokeMethod("test");
      print(package);
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBarComponent(
        bgColor: Colors.white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: SETTING,
        callback: () => Get.back(),
      ),
      body: Column(
        children: [
          OtherSettingButton(
            icon: Icons.sms,
            title: 'Tạo Soft Token',
            onTap: () {
              testEntrust();
            },
          ),
        ],
      ),
    );
  }
}
