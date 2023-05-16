import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sms_autofill/sms_autofill.dart';

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

  TextEditingController controllerTextF = TextEditingController();
  String valueText = "";
  final controller = Get.put(OtherSettingsController());

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

  Future<void> checkPin() async {
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: TRANSACTION_CONFIRM,
        callback: () => Get.back(),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
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
                    height: MediaQuery.of(context).size.height / 3,
                    color: clr_white,
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
            ),
          ),
          Container(
              color: Colors.white,
              height: height_350,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                      height: height_121,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: width_8,
                          right: width_8,
                          bottom: height_10,
                        ),
                        decoration: BoxDecoration(
                            color: clr_white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(border_8),
                              topLeft: Radius.circular(border_8),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 2.0,
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: height_8,
                                ),
                                child: Text(
                                  TITLE_42,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: clr_black,
                                    fontSize: fontSize_12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // OTPTextField(
                                  //   length: 6,
                                  //   width:
                                  //       MediaQuery.of(context).size.width / 1.5,
                                  //   fieldWidth: width_24,
                                  //   style: TextStyle(
                                  //     fontSize: fontSize_20,
                                  //     fontWeight: FontWeight.w900,
                                  //   ),
                                  //   textFieldAlignment:
                                  //       MainAxisAlignment.spaceAround,
                                  //   fieldStyle: FieldStyle.underline,
                                  //   onChanged: (_) {},
                                  //   onCompleted: (pin) {
                                  //     print("Completed: " + pin);
                                  //   },
                                  // ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: PinFieldAutoFill(
                                        decoration: UnderlineDecoration(
                                          textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                          colorBuilder: FixedColorBuilder(
                                              Colors.black.withOpacity(0.3)),
                                        ),

                                        // UnderlineDecoration,
                                        // BoxLooseDecoration or BoxTightDecoration see https://github.com/TinoGuo/pin_input_text_field for more info,
                                        //currentCode: // prefill with a code
                                        // onCodeSubmitted: //code submitted callback
                                        // onCodeChanged: //code changed callback
                                        codeLength: 8 //code length, default 6
                                        ),
                                  ),
                                  Icon(
                                    Icons.keyboard_voice_outlined,
                                    size: fontSize_20,
                                    color: clr_black26,
                                  )
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.only(top: height_8),
                                child: ButtonComponent(
                                    title: CONFIRM,
                                    bgColor: button_color_home,
                                    callback: () {
                                      showModalBottomSheet<void>(
                                          context: context,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(25),
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
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            ENTER_PIN,
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'open_sans',
                                                              fontSize:
                                                                  fontSize_12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () =>
                                                                Navigator.pop(
                                                                    context),
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
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width /
                                                            1.5,
                                                        child: PinFieldAutoFill(
                                                          decoration:
                                                              UnderlineDecoration(
                                                            textStyle:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    color: Colors
                                                                        .black),
                                                            colorBuilder:
                                                                FixedColorBuilder(Colors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.3)),
                                                          ),
                                                          codeLength: 4,
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          controller:
                                                              controllerTextF,
                                                          onCodeChanged:
                                                              (value) {
                                                            valueText =
                                                                value ?? '';
                                                          },
                                                        ),
                                                      ),
                                                      ElevatedButton(
                                                          onPressed: () async {
                                                            if (controllerTextF
                                                                .text
                                                                .isNotEmpty) {
                                                              testEntrust2(
                                                                  valueText);
                                                              passData();
                                                              if (controller
                                                                      .name !=
                                                                  "") {
                                                                await checkPin();
                                                                if (controller
                                                                    .pin) {
                                                                  print(
                                                                      'PinValue true: ${controller.pin}');
                                                                  Navigator.pop(
                                                                      context);
                                                                  controller
                                                                      .startTimer();
                                                                  showModalBottomSheet<
                                                                          void>(
                                                                      context:
                                                                          context,
                                                                      isScrollControlled:
                                                                          true,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.vertical(
                                                                          top: Radius.circular(
                                                                              25),
                                                                        ),
                                                                      ),
                                                                      builder:
                                                                          (BuildContext
                                                                              context) {
                                                                        return Container(
                                                                            margin: EdgeInsets
                                                                                .only(
                                                                              left: width_8,
                                                                              right: width_8,
                                                                              top: height_8,
                                                                            ),
                                                                            height: Get.size.height /
                                                                                3,
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                                  GetBuilder<OtherSettingsController>(
                                                                                      builder: (c) => Column(
                                                                                        children: [
                                                                                          Text(
                                                                                                controller.name ?? '',
                                                                                                style: TextStyle(
                                                                                                  color: Colors.black,
                                                                                                ),
                                                                                              ),
                                                                                          SizedBox(height: 20,),
                                                                                          Text('${c.start} (s)'),
                                                                                        ],
                                                                                      )),
                                                                                  SizedBox(height: 20,),
                                                                                  ElevatedButton(
                                                                                      onPressed: () {
                                                                                        Get.toNamed("/transfer_success", arguments: '');
                                                                                      },
                                                                                      child: Text("Finish")),
                                                                                ],
                                                                              ),
                                                                            ));
                                                                      });
                                                                } else {
                                                                  print(
                                                                      'PinValue false: ${controller.pin}');
                                                                }
                                                              }
                                                            } else {
                                                              controllerTextF
                                                                  .text = "";
                                                            }
                                                          },
                                                          child:
                                                              Text("Confirm")),
                                                      // GetBuilder<OtherSettingsController>(
                                                      //     builder: (c) => Text(
                                                      //       controller.name ?? '',
                                                      //       style: TextStyle(
                                                      //         color: Colors.black,
                                                      //       ),
                                                      //     ))
                                                    ],
                                                  ),
                                                ));
                                          });
                                      // Navigator.of(context).pop();
                                      // Get.toNamed("/transfer_success",
                                      //     arguments: '');
                                    }),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    top: size_0,
                    child: CircleAvatar(
                        backgroundColor: clr_2dcabc,
                        radius: border_8,
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: fontSize_15,
                          color: clr_white,
                        )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
