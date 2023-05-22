import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../../components/button/button_component.dart';
import '../../settings/controller/other_settings_controller.dart';
import '../components/title_components.dart';

class TransactionConfirmationPage extends StatefulWidget {
  const TransactionConfirmationPage({Key? key}) : super(key: key);

  @override
  State<TransactionConfirmationPage> createState() =>
      _TransactionConfirmationPageState();
}

class _TransactionConfirmationPageState
    extends State<TransactionConfirmationPage> {
  static const platform = MethodChannel('entrust.sdk.dev/flutter');

  TextEditingController controllerPinTextField = TextEditingController();
  String valueText = "";
  final controller = Get.put(OtherSettingsController());

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

  Future<void> getDataOTPNative() async {
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

  @override
  void dispose() {
    // TODO: implement dispose
    controller.timer?.cancel();
    controllerPinTextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: TRANSACTION_CONFIRM,
        callback: () => Get.back(),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(top: height_8),
                  padding: EdgeInsets.only(bottom: height_8),
                  color: clr_white,
                  child: Column(
                    children: const [
                      TitleComponents(
                          title: TITLE_37,
                          subTitle: '2160000542522',
                          color: clr_black),
                      TitleComponents(
                          title: TITLE_38,
                          subTitle: '2160000542522',
                          color: PRIMARY_COLOR),
                      TitleComponents(
                          title: TITLE_39,
                          subTitle: 'HOÀNG THỊ THUỲ MAI',
                          color: PRIMARY_COLOR),
                      TitleComponents(
                          title: TITLE_40,
                          subTitle: 'BIDV',
                          color: PRIMARY_COLOR),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height_8),
                  padding: EdgeInsets.only(bottom: height_8),
                  color: clr_white,
                  child: Column(
                    children: const [
                      TitleComponents(
                        title: AMOUT_OF_MONEY,
                        subTitle: '10,000 VND',
                        color: PRIMARY_COLOR,
                      ),
                      TitleComponents(
                        title: AMOUT_OF_MONEY2,
                        subTitle: '10,000 VND',
                        color: PRIMARY_COLOR,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height_8),
                  padding: EdgeInsets.only(bottom: height_8),
                  color: clr_white,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: const [
                      TitleComponents(
                        title: TITLE_41,
                        subTitle: '28/03/2023 15:19:57',
                        color: clr_black,
                      ),
                      TitleComponents(
                        title: DESCRIPTIONS,
                        subTitle: 'CAO VAN HOANG Chuyen tien',
                        color: clr_black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: height_40,
        padding: EdgeInsets.only(
          top: height_4,
          bottom: height_4,
        ),
        decoration: BoxDecoration(
          color: clr_white,
          boxShadow: [bottomNavigationBar],
        ),
        child: ButtonComponent(
            title: CONFIRM,
            bgColor: button_color_home,
            callback: () {
              enterPinCodeBottomSheet(context);
            }),
      ),
    );
  }

  Future<void> enterPinCodeBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        builder: (BuildContext contextBottomSheet) {
          return Padding(
              padding: MediaQuery.of(context).viewInsets, // viewInsets will decorate your screen
            child: Container(
                height: Get.size.height / 4,
                margin: EdgeInsets.only(
                  left: width_8,
                  right: width_8,
                  top: height_8,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () => Navigator.pop(contextBottomSheet),
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
                        ENTER_PIN,
                        style: TextStyle(
                          fontFamily: 'open_sans',
                          fontSize: fontSize_12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: height_8,
                      ),
                      SizedBox(
                        width:
                            MediaQuery.of(contextBottomSheet).size.width / 1.5,
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
                          controller: controllerPinTextField,
                          autoDisposeControllers: false,
                          onChanged: (value) {
                            // valueText = value;
                            valueText = value;
                          },
                          autoFocus: true,
                          onCompleted: (_) async {
                            exportPinFlutterToNative(valueText);
                            getDataOTPNative();
                            controllerPinTextField.text = "";
                            await checkPinNative();
                            if (controller.pin) {
                              print('PinValue true: ${controller.pin}');
                              Navigator.pop(contextBottomSheet);
                              showModalBottomSheet<void>(
                                  context: contextBottomSheet,
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25),
                                    ),
                                  ),
                                  builder: (BuildContext contextBottomSheet2) {
                                    controller.startTimer(contextBottomSheet2);
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom:
                                              MediaQuery.of(contextBottomSheet2)
                                                  .viewInsets
                                                  .bottom),
                                      child: Container(
                                          margin: EdgeInsets.only(
                                            left: width_8,
                                            right: width_8,
                                            top: height_8,
                                          ),
                                          height: Get.size.height / 2,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              GetBuilder<
                                                      OtherSettingsController>(
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
                                                              color:
                                                                  Colors.black,
                                                              fontSize:
                                                                  fontSize_16,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: height_16,
                                                          ),
                                                          Text(
                                                            controller.name ??
                                                                '',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize:
                                                                  fontSize_16,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: height_16,
                                                          ),
                                                          Text(
                                                              'Mã xác thực sẽ hết thời gian trong: ${c.start} (s)'),
                                                          SizedBox(
                                                            height: height_16,
                                                          ),
                                                          Text(
                                                              'Chọn hoàn tất, mã xác nhận sẽ tự động được điền'),
                                                          SizedBox(
                                                            height: height_16,
                                                          ),
                                                          Text(
                                                              'Vui lòng không cung cấp mã xác nhận cho bất cứ ai.'),
                                                        ],
                                                      )),
                                              const Spacer(),
                                              ButtonComponent(
                                                  title: "Xác nhận",
                                                  bgColor: button_color_home,
                                                  callback: () {
                                                    Navigator.pop(context);
                                                    Get.toNamed(
                                                        "/transfer_success",
                                                        arguments: '');
                                                  }),
                                              SizedBox(
                                                height: height_16,
                                              ),
                                            ],
                                          )),
                                    );
                                  });
                            } else {
                              print('PinValue false: ${controller.pin}');
                              controller
                                  .checkErrorText("Mã Pin không chính xác");
                            }
                          },
                          beforeTextPaste: (text) {
                            print("Allowing to paste");
                            return true;
                          },
                        ),
                      ),
                      SizedBox(
                        height: height_8,
                      ),
                      GetBuilder<OtherSettingsController>(
                        builder: (c) => Text(
                          c.textError,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
