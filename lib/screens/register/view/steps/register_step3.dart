import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/register/view/steps/register_step4.dart';

import '../../../../core/resources/strings.dart';
import '../../../../core/style/style.dart';
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
          margin: EdgeInsets.only(top: 10.h),
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          height: Get.size.height,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 40.h, top: 10.h),
                  alignment: Alignment.center,
                  width: Get.size.width,
                  child: SizedBox(
                    width: Get.size.width / 1.1,
                    child: Text(
                      TITLE_9,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                TextFieldIconComponent(
                    labelText: PHONE_NUMBER_REGISTER,
                    icon: Icons.phone,
                    textInputType: TextInputType.number),

                Container(
                  margin: EdgeInsets.only(top: 40.h, bottom: 30.h),
                  padding: EdgeInsets.only(bottom: 10.h, left: 10.w, right: 10.w),
                  decoration: BoxDecoration(
                      color: clr_bg_text,
                      borderRadius: BorderRadius.circular(10.r)),
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
                        padding: EdgeInsets.only(top: 10.h),
                        width: Get.size.width / 1.5,
                        child: RichText(
                          text: TextSpan(
                            text: '$TITLE_10 \n',
                            style: TextStyle(
                                fontSize: 13.sp, color: clr_black54),
                            children: [
                              TextSpan(
                                text:
                                TITLE_11,
                                style: TextStyle(
                                    fontSize: 13.sp, color: clr_black54),
                              ),
                              TextSpan(
                                text: ' $NO ',
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: clr_black,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text:
                                    '$TITLE_12 ',
                                style: TextStyle(
                                    fontSize: 13.sp, color: clr_black54),
                              ),
                              TextSpan(
                                text: ' $NO ',
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: clr_black,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text:
                                    '$TITLE_13 \n \n',
                                style: TextStyle(
                                    fontSize: 13.sp, color: clr_black54),
                              ),
                              TextSpan(
                                text:
                                    '$TITLE_14 \n \n',
                                style: TextStyle(
                                    fontSize: 13.sp, color: clr_black54),
                              ),
                              TextSpan(
                                text: '$TITLE_15 ',
                                style: TextStyle(
                                    fontSize: 13.sp, color: clr_black54),
                              ),
                              TextSpan(
                                text: '$TITLE_16 ',
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: PRIMARY_COLOR,
                                    fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text:
                                    TITLE_17,
                                style: TextStyle(
                                    fontSize: 13.sp, color: clr_black54),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Get.to(const RegisterStep4Page()),
                ButtonComponent(
                  title: NEXT,
                  bgColor: button_color_home,
                  callback: () => Get.to(const RegisterStep4Page()),
                ),
              ],
            ),
          ),
        ));
  }
}
