import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../../components/button/button_component.dart';
import '../components/title_components.dart';

class TransactionConfirmationPage extends StatelessWidget {
  const TransactionConfirmationPage({Key? key}) : super(key: key);

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
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height_8),
                      padding: EdgeInsets.only(bottom: height_8),
                      color: clr_white,
                      child: Column(
                        children: const [
                          TitleComponents(title: TITLE_37, subTitle: '2160000542522', color: clr_black),
                          TitleComponents(title: TITLE_38, subTitle: '2160000542522', color: PRIMARY_COLOR),
                          TitleComponents(title: TITLE_39, subTitle: 'HOÀNG THỊ THUỲ MAI', color: PRIMARY_COLOR),
                          TitleComponents(title: TITLE_40, subTitle: 'BIDV', color: PRIMARY_COLOR),
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
          ),
          Positioned(
            bottom: 0,
            child: Container(
                color: Colors.white,
                height: height_125,
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
                                    OTPTextField(
                                      length: 6,
                                      width: MediaQuery.of(context).size.width / 1.5,
                                      fieldWidth: width_24,
                                      style: TextStyle(
                                        fontSize: fontSize_20,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textFieldAlignment: MainAxisAlignment.spaceAround,
                                      fieldStyle: FieldStyle.underline,
                                      onCompleted: (pin) {
                                        print("Completed: " + pin);
                                      },
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
                                      callback: () => Get.toNamed("/transfer_success", arguments: '')),
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
          ),
        ],
      ),
    );
  }
}
