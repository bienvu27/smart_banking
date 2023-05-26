import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/register/view/steps/register_step4.dart';

import '../../../../res/strings/strings.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../../components/app_bar/app_bar_component.dart';
import '../../../components/button/button_component.dart';
import '../../../components/text_field/text_field_icon_component.dart';
import '../../controller/register_controller.dart';

class RegisterStep3Page extends StatelessWidget {
  const RegisterStep3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarComponent(
          bgColor: clr_white,
          colorTitle: clr_black,
          colorIcon: clr_black,
          title: REGISTER_ACCOUNT,
          callback: () => Get.back(),
        ),
        body: Container(
          margin: EdgeInsets.only(top: height_8),
          padding: EdgeInsets.only(
            left: width_16,
            right: width_16,
          ),
          height: Get.size.height,
          color: clr_white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: height_16,
                    top: height_8,
                  ),
                  alignment: Alignment.center,
                  width: Get.size.width,
                  child: SizedBox(
                    width: Get.size.width / 1.1,
                    child: Text(
                      TITLE_9,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: fontSize_12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                TextFieldIconComponent(
                  labelText: PHONE_NUMBER_REGISTER,
                  icon: Icons.phone,
                  textInputType: TextInputType.number,
                ),

                Container(
                  margin: EdgeInsets.only(
                    top: height_16,
                    bottom: height_12,
                  ),
                  padding: EdgeInsets.only(
                    bottom: height_8,
                    left: width_8,
                    right: width_8,
                  ),
                  decoration: BoxDecoration(
                    color: clr_bg_text,
                    borderRadius: BorderRadius.circular(border_8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GetBuilder<RegisterPageController>(
                        init: RegisterPageController(),
                        builder: (controller) {
                          return Checkbox(
                            value: controller.isChecked,
                            onChanged: (value) {
                              controller.toggleCheckbox(controller.isChecked);
                            },
                            activeColor: PRIMARY_COLOR,
                            checkColor: clr_white,
                            tristate: false,
                          );
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(top: height_8),
                        width: Get.size.width / 1.5,
                        child: RichText(
                          text: TextSpan(
                            text: '$TITLE_10 \n',
                            style: TextStyle(fontSize: fontSize_12, color: clr_black54),
                            children: [
                              TextSpan(
                                text: TITLE_11,
                                style: TextStyle(fontSize: fontSize_12, color: clr_black54),
                              ),
                              TextSpan(
                                text: ' $NO ',
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: clr_black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: '$TITLE_12 ',
                                style: TextStyle(fontSize: fontSize_12, color: clr_black54),
                              ),
                              TextSpan(
                                text: ' $NO ',
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: clr_black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: '$TITLE_13 \n \n',
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: clr_black54,
                                ),
                              ),
                              TextSpan(
                                text: '$TITLE_14 \n \n',
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: clr_black54,
                                ),
                              ),
                              TextSpan(
                                text: '$TITLE_15 ',
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: clr_black54,
                                ),
                              ),
                              TextSpan(
                                text: '$TITLE_16 ',
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: PRIMARY_COLOR,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: TITLE_17,
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: clr_black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Get.to(const RegisterStep4Page()),
                Container(
                  margin: EdgeInsets.only(
                    bottom: height_8,
                  ),
                  child: ButtonComponent(
                    title: NEXT,
                    bgColor: button_color_home,
                    callback: () => Get.to(const RegisterStep4Page()),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
