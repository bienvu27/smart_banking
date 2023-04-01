import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../../components/button/button_component.dart';
import '../../components/text_field/text_field_component.dart';

class TransactionInforPage extends StatelessWidget {
  const TransactionInforPage({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: width_8, right: width_8, top: height_8),
                padding: EdgeInsets.only(left: width_12),
                height: height_56,
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
                          size: fontSize_20,
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
                              fontSize: fontSize_12,
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
                              fontSize: fontSize_12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(left: width_8, right: width_8, top: height_8),
                padding: EdgeInsets.only(right: width_12),
                height: height_56,
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
                              fontSize: fontSize_12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: height_3,
                          ),
                          Text(
                            'hoang thi thuy mai'.toUpperCase(),
                            style: TextStyle(
                              color: clr_white,
                              fontSize: fontSize_12,
                              fontWeight: FontWeight.w500,
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
                          'assets/images/vrbank.png',
                          width: width_20,
                          height: height_20,
                        ),
                      ),
                    ]),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width_8, right: width_8, top: height_8),
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
                        fontSize: fontSize_12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: width_8, right: width_8, top: height_8),
                child: TextFieldComponent(
                  label: TRANSACTION_CONTENT,
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
            callback: () => Get.toNamed("/transaction_confirm", arguments: '')),
      ),
    );
  }
}
