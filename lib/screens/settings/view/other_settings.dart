import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/core/common/utils.dart';
import 'package:smart_banking/screens/components/app_bar/app_bar_component.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../components/other_settings_button.dart';
import '../controller/other_settings_controller.dart';

class OtherSettings extends StatefulWidget {
  const OtherSettings({Key? key}) : super(key: key);

  @override
  State<OtherSettings> createState() => _OtherSettingsState();
}

class _OtherSettingsState extends State<OtherSettings> {
  static const platform = MethodChannel('entrust.sdk.dev/flutter');

  TextEditingController controllerTextF = TextEditingController();
  String valueText = "";

  final controller = Get.put(OtherSettingsController());

  Future<void> testEntrust() async {
    try {
      final package = await platform.invokeMethod("test");
      print(package);
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }

  Future<void> testEntrust2(String enterCode) async {
    final String arg1 = valueText;
    String? arg2;
    try {
      final package =
          await platform.invokeMethod("test_2", {"enter_code": arg1});
      arg2 = "hahahaha";
      print(package);
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }

  Future<void> passData() async {
    try {
      var res = await platform.invokeMethod("fill_text");
      await controller.setText(res);
      print("-----------${controller.name}");
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
          OtherSettingButton(
              icon: Icons.token,
              title: 'Đã có Soft Token',
              onTap: () {
                showModalBottomSheet<void>(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.r),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return Container(
                          margin: EdgeInsets.only(
                            left: width_8,
                            right: width_8,
                            top: height_8,
                          ),
                          height: Get.size.height / 3,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ENTER_PIN,
                                      style: TextStyle(
                                        fontFamily: 'open_sans',
                                        fontSize: fontSize_12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () => Navigator.pop(context),
                                      child: Text(
                                        CANCEL,
                                        style: TextStyle(
                                          fontSize: fontSize_12,
                                          color: PRIMARY_COLOR,
                                          fontFamily: 'open_sans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                TextField(
                                    keyboardType: TextInputType.number,
                                    maxLength: 4,
                                    controller: controllerTextF,
                                    onChanged: (value) {
                                      valueText = value;
                                    },
                                    style: TextStyle(
                                      fontSize: fontSize_11,
                                      color: clr_black,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: ENTER_PIN,
                                      suffixIconColor: clr_black54,
                                      labelStyle: TextStyle(
                                        fontSize: fontSize_11,
                                        color: clr_black,
                                        fontFamily: 'open_sans',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                                ElevatedButton(
                                    onPressed: () {
                                      if(controllerTextF.text.isNotEmpty) {
                                        testEntrust2(valueText);
                                        passData();
                                      }else{
                                        controllerTextF.text = "";
                                      }
                                    },
                                    child: Text("test")),
                                GetBuilder<OtherSettingsController>(
                                    builder: (c) => Text(
                                      controller.name ?? '',
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                        ))
                              ],
                            ),
                          ));
                    });
              }),
        ],
      ),
    );
  }
}
