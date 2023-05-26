import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smart_banking/screens/components/app_bar/app_bar_component.dart';

import '../../../res/strings/strings.dart';
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
  TextEditingController controllerCreatePinTextField = TextEditingController();
  TextEditingController controllerConfirmPinTextField = TextEditingController();
  String valueText = "";
  String createPin = "";
  String confirmPin = "";

  final controller = Get.put(OtherSettingsController());

  Future<void> testEntrust() async {
    try {
      final package = await platform.invokeMethod("test");
      print(package);
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }

  Future<void> exportPinFlutterToNative(String enterCode) async {
    final String arg1 = valueText;
    try {
      final package =
          await platform.invokeMethod("enter_pin", {"enter_code": arg1});
      print(package);
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }

  Future<void> createPinFlutterToNative(
      String pinCode, String confirmCode) async {
    final String arg1 = createPin;
    final String arg2 = confirmPin;
    try {
      final package = await platform.invokeMethod("create_pin", {
        "create_pin": arg1,
        "confirm_pin": arg2,
      });
      print(package);
      await controller.checkPin(package);
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

  Future<void> checkPinNative() async {
    try {
      var res = await platform.invokeMethod("check_pin");
      await controller.checkPin(res);
      print("-----------${controller.pin}");
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }

  Future<void> checkPinCreatePin() async {
    try {
      var res = await platform.invokeMethod("check_pin");
      await controller.checkPin(res);
      print("-----------${controller.pin}");
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }

  Future<void> checkExistPin() async {
    try {
      var res = await platform.invokeMethod("check_exist_pin");
      await controller.checkPinExist(res);
      print("checkPinExist: ${controller.pinExist}");
    } on PlatformException catch (e) {
      print("Failed to get battery level: ${e.message}");
    }
  }

  Future<void> getDataOTPNative() async {
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
      resizeToAvoidBottomInset: true,
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
            icon: Icons.pin_rounded,
            title: 'Tạo mã Pin',
            onTap: () async {
              await checkExistPin().then((value) => checkPinNative());
              if (controller.pinExist == "")
                showModalBottomSheet<void>(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                    builder: (BuildContext contextBottomSheet) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: width_8,
                            right: width_8,
                            top: height_8,
                          ),
                          height: Get.size.height / 4,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () =>
                                          Navigator.pop(contextBottomSheet),
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
                                SizedBox(
                                  height: height_8,
                                ),
                                Text(
                                  CREATE_PIN,
                                  style: TextStyle(
                                    fontFamily: 'open_sans',
                                    fontSize: fontSize_12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: height_20,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(contextBottomSheet)
                                          .size
                                          .width /
                                      1.5,
                                  child: PinCodeTextField(
                                    appContext: contextBottomSheet,
                                    pinTheme: PinTheme(
                                      shape: PinCodeFieldShape.circle,
                                      borderRadius: BorderRadius.circular(5),
                                      fieldHeight: 50,
                                      fieldWidth: 40,
                                      activeFillColor: Colors.white,
                                    ),
                                    obscureText: true,
                                    length: 4,
                                    keyboardType: TextInputType.number,
                                    controller: controllerCreatePinTextField,
                                    autoDisposeControllers: false,
                                    onChanged: (value) {
                                      createPin = value;
                                    },
                                    autoFocus: true,
                                    onCompleted: (_) async {
                                      createPin =
                                          controllerCreatePinTextField.text;
                                      Navigator.pop(contextBottomSheet);
                                      showModalBottomSheet<void>(
                                          context: context,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(25),
                                            ),
                                          ),
                                          builder: (BuildContext
                                              contextBottomSheet) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  left: width_8,
                                                  right: width_8,
                                                  top: height_8,
                                                ),
                                                height: Get.size.height / 4,
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        InkWell(
                                                          onTap: () =>
                                                              Navigator.pop(
                                                                  contextBottomSheet),
                                                          child: Text(
                                                            CANCEL,
                                                            style: TextStyle(
                                                              fontSize:
                                                                  fontSize_12,
                                                              color:
                                                                  PRIMARY_COLOR,
                                                              fontFamily:
                                                                  'open_sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: height_8,
                                                    ),
                                                    Text(
                                                      CONFIRM_PIN,
                                                      style: TextStyle(
                                                        fontFamily: 'open_sans',
                                                        fontSize: fontSize_12,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: height_20,
                                                    ),
                                                    SizedBox(
                                                      width: MediaQuery.of(
                                                                  contextBottomSheet)
                                                              .size
                                                              .width /
                                                          1.5,
                                                      child: PinCodeTextField(
                                                        appContext:
                                                            contextBottomSheet,
                                                        pinTheme: PinTheme(
                                                          shape:
                                                              PinCodeFieldShape
                                                                  .circle,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          fieldHeight: 50,
                                                          fieldWidth: 40,
                                                          activeFillColor:
                                                              Colors.white,
                                                        ),
                                                        obscureText: true,
                                                        length: 4,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        controller:
                                                            controllerConfirmPinTextField,
                                                        autoDisposeControllers:
                                                            false,
                                                        onChanged: (value) {
                                                          confirmPin = value;
                                                        },
                                                        autoFocus: true,
                                                        onCompleted: (_) async {
                                                          confirmPin =
                                                              controllerConfirmPinTextField
                                                                  .text;
                                                          if (createPin !=
                                                              confirmPin) {
                                                            controller
                                                                .checkErrorText(
                                                                    "Mã pin không khớp");
                                                          } else {
                                                            controller
                                                                .checkErrorText(
                                                                    "");
                                                            await createPinFlutterToNative(
                                                                createPin,
                                                                confirmPin);
                                                            getDataOTPNative();
                                                            await checkPinNative();
                                                            if (controller
                                                                .pin) {
                                                              Navigator.pop(
                                                                  contextBottomSheet);
                                                              showModalBottomSheet<
                                                                      void>(
                                                                  context:
                                                                      contextBottomSheet,
                                                                  isScrollControlled:
                                                                      true,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .vertical(
                                                                      top: Radius
                                                                          .circular(
                                                                              25),
                                                                    ),
                                                                  ),
                                                                  builder:
                                                                      (BuildContext
                                                                          contextBottomSheet2) {
                                                                    controller
                                                                        .startTimer(
                                                                            contextBottomSheet2);
                                                                    return Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom: MediaQuery.of(contextBottomSheet2)
                                                                              .viewInsets
                                                                              .bottom),
                                                                      child: Container(
                                                                          margin: EdgeInsets.only(
                                                                            left:
                                                                                width_8,
                                                                            right:
                                                                                width_8,
                                                                            top:
                                                                                height_8,
                                                                          ),
                                                                          height: Get.size.height / 2,
                                                                          child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children: [
                                                                              GetBuilder<OtherSettingsController>(
                                                                                  builder: (c) => Column(
                                                                                        children: [
                                                                                          Icon(
                                                                                            Icons.key,
                                                                                            size: fontSize_40,
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: height_16,
                                                                                          ),
                                                                                          Text(
                                                                                            'Mã xác nhận của bạn là:',
                                                                                            style: TextStyle(
                                                                                              color: Colors.black,
                                                                                              fontSize: fontSize_16,
                                                                                            ),
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: height_16,
                                                                                          ),
                                                                                          Text(
                                                                                            controller.name ?? '',
                                                                                            style: TextStyle(
                                                                                              color: Colors.black,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontSize: fontSize_16,
                                                                                            ),
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: height_16,
                                                                                          ),
                                                                                          Text('Mã xác thực sẽ hết thời gian trong: ${c.start} (s)'),
                                                                                          SizedBox(
                                                                                            height: height_16,
                                                                                          ),
                                                                                          Text('Vui lòng không cung cấp mã xác nhận cho bất cứ ai.'),
                                                                                        ],
                                                                                      )),
                                                                            ],
                                                                          )),
                                                                    );
                                                                  });
                                                            } else {
                                                              controller
                                                                  .checkErrorText(
                                                                      "Không lấy được mà Pin");
                                                            }
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                    GetBuilder<
                                                        OtherSettingsController>(
                                                      builder: (c) => Text(
                                                        c.textError,
                                                        style: TextStyle(
                                                            color: Colors.red),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
            },
          ),
          OtherSettingButton(
            icon: Icons.sms,
            title: 'Tạo Soft Token',
            onTap: () {
              // testEntrust();
            },
          ),
          OtherSettingButton(
            icon: Icons.token,
            title: 'Đã có Soft Token',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
