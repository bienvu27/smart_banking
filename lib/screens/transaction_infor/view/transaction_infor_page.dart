import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/resources/name_icon.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../../components/button/button_component.dart';
import '../../components/text_field/text_field_component.dart';
import '../controller/transaction_infor_controller.dart';

class TransactionInforPage extends StatelessWidget {
  TransactionInforPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionInforController>(
        init: TransactionInforController(),
        builder: (controller) {
      return Scaffold(
        appBar: AppBarComponent(
          bgColor: clr_white,
          colorTitle: clr_black,
          colorIcon: clr_black,
          title: TRANSACTION_INFOR,
          iconAction: Icons.info_outline,
          callback: () => Get.back(),
        ),
        body: Container(
          margin: EdgeInsets.only(top: height_8),
          color: clr_white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: width_8,
                    right: width_8,
                    top: height_8,
                  ),
                  padding: EdgeInsets.only(
                    left: width_12,
                    top: height_20,
                    bottom: height_20,
                  ),
                  decoration: BoxDecoration(
                    color: clr_blue,
                    borderRadius: BorderRadius.circular(border_8),
                    gradient: linearGradientButtom,
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: border_16,
                          backgroundColor: clr_d5d6d7,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: fontSize_26,
                          ),
                        ),
                        SizedBox(
                          width: width_8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              NUMBER_TEST,
                              style: TextStyle(
                                color: clr_white,
                                fontFamily: 'open_sans',
                                fontSize: fontSize_11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: height_3,
                            ),
                            Text(
                              MONEY_TEST,
                              style: TextStyle(
                                color: clr_white,
                                fontFamily: 'open_sans',
                                fontSize: fontSize_11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: width_8,
                    right: width_8,
                    top: height_8,
                  ),
                  padding: EdgeInsets.only(
                    right: width_12,
                    top: height_20,
                    bottom: height_20,
                  ),
                  decoration: BoxDecoration(
                    color: clr_blue,
                    borderRadius: BorderRadius.circular(border_8),
                    gradient: linearGradientButtom2,
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '27910000492884',
                              style: TextStyle(
                                color: clr_white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'open_sans',
                                fontSize: fontSize_11,
                              ),
                            ),
                            SizedBox(
                              height: height_3,
                            ),
                            Text(
                              'hoang thi thuy mai'.toUpperCase(),
                              style: TextStyle(
                                color: clr_white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'open_sans',
                                fontSize: fontSize_11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width_8,
                        ),
                        CircleAvatar(
                          backgroundColor: clr_f6f5f7,
                          radius: border_16,
                          child: Image.asset(
                            icon_vrb,
                            width: width_24,
                            height: height_24,
                          ),
                        ),
                      ]),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: width_8,
                        right: width_8,
                        top: height_8,
                      ),
                      child: TextFieldComponent(
                        label: AMOUT_OF_MONEY,
                        textController: controller.moneyController,
                        textInputType: TextInputType.number,
                        onChange: (_) {
                          controller.convertMoneyNumberToText(VND);
                        },
                      ),
                    ),
                    Positioned(
                      right: width_8,
                      bottom: height_10,
                      child: Text(
                        VND,
                        style: TextStyle(
                          color: clr_black,
                          fontSize: fontSize_10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: width_8,
                    right: width_8,
                    top: height_8,
                  ),
                  child: TextFieldComponent(
                    label: controller.sAmount,
                    textInputType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: width_8,
                    right: width_8,
                    top: height_8,
                  ),
                  child: TextFieldComponent(
                    label: TRANSACTION_CONTENT,
                    text: TITLE_72,
                    textInputType: TextInputType.text,
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(top: height_4, bottom: height_4),
          height: height_40,
          decoration: BoxDecoration(
            color: clr_white,
            boxShadow: [bottomNavigationBar],
          ), // Get.to(const RegisterStep3Page()
          child: ButtonComponent(
              title: NEXT,
              bgColor: button_color_home,
              callback: () =>
                  Get.toNamed("/transaction_confirm", arguments: '')),
        ),
      );
    });
  }
}
