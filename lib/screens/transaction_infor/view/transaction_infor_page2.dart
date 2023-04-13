import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/resources/name_icon.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../../components/button/button_component.dart';
import '../../components/text_field/text_field_component.dart';
import '../../transfer/controller/transfer_controller.dart';

class TransactionInforPage2 extends StatelessWidget {
  const TransactionInforPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        height: MediaQuery.of(context).size.height,
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
                  gradient: linearGradientBg,
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
                  top: height_13,
                  bottom: height_13,
                ),
                decoration: BoxDecoration(
                  color: clr_blue,
                  borderRadius: BorderRadius.circular(border_8),
                  gradient: linearGradientBg2,
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
                          SizedBox(
                            height: height_3,
                          ),
                          Text(
                            'Agribank',
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
                          image_agribank,
                          width: width_18,
                          height: height_18,
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
                      textInputType: TextInputType.number,
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
                  label: TRANSACTION_CONTENT,
                  textInputType: TextInputType.text,
                ),
              ),
              SizedBox(height: height_16,),
              GetBuilder<TransferController>(
                  init: TransferController(),
                  builder: (controller){
                return  Container(
                  margin: EdgeInsets.only(
                    left: width_16,
                    right: width_16,
                    top: height_8,
                  ),
                  padding: EdgeInsets.only(
                    top: height_10,
                    bottom: height_10,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: clr_f5f5f5,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Chuyển tiền nhanh \n',
                          style: TextStyle(
                            fontSize: fontSize_9,
                            color: clr_black,
                            fontFamily: 'open_sans',
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(
                              text: 'Chuyển tiền 24/7 là dịch vụ chuyển nhanh \n',
                              style: TextStyle(
                                fontSize: fontSize_9,
                                color: clr_black,
                                fontFamily: 'open_sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                height: height_11,
                                width: width_40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(image_napas),
                                    )),
                              ),
                            ),
                            TextSpan(
                              text: ' hoặc song phương',
                              style: TextStyle(
                                fontSize: fontSize_9,
                                color: clr_black,
                                fontFamily: 'open_sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Switch(
                        value: controller.isSwitched,
                        thumbColor: MaterialStatePropertyAll<Color>(controller.isSwitched ? clr_1ac5b6 : clr_e2e3e3),
                        activeColor: clr_adb5bd,
                        onChanged: (value) {
                          controller.toggle();
                          // controller.isSwitched = value;
                        },
                      ),
                    ],
                  ),
                );
              })

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
            callback: () => Get.toNamed("/transaction_confirm", arguments: '')),
      ),
    );
  }
}
