import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/button/button_component.dart';

import '../../../../core/common/utils.dart';
import '../../../../core/resources/strings.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../../components/app_bar/app_bar_component.dart';
import '../../../components/text_field/text_field_component.dart';
import '../../../components/text_field/text_field_popup_icon_component.dart';
import '../../../components/text_field/text_field_subtile_component.dart';
import '../../controller/register_controller.dart';

class RegisterInformation extends StatelessWidget {
  const RegisterInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterPageController>(
        init: RegisterPageController(),
        builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBarComponent(
              bgColor: clr_white,
              colorTitle: clr_black,
              colorIcon: clr_black,
              title: INFRO_REGISTER,
              callback: () => Get.back(),
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 10.h),
                width: Get.size.width,
                color: clr_white,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldComponent(
                          label: FULL_NAME,
                          textInputType: TextInputType.text,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldComponent(
                          label: ACCOUNT_NUMBER,
                          textInputType: TextInputType.text,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('date');
                          controller.selectDate(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          child: TextFieldPopupIconComponent(
                            setDate: controller.setDate,
                            textEditingController: controller.dateController,
                              label: DATE_OF_BIRTH, icon: Icons.date_range),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldComponent(
                          label: CCCD,
                          textInputType: TextInputType.text,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldComponent(
                            label: PHONE_NUMBER_REGISTER_1,
                            textInputType: TextInputType.phone),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldComponent(
                            label: PHONE_NUMBER_REGISTER_2,
                            textInputType: TextInputType.phone),
                      ),
                      Stack(
                        children: [
                          InkWell(
                            onTap: (){
                              Utils.showSelectService(context);
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 50.h),
                              child: TextFieldPopupIconComponent(
                                  setDate: controller.setDate,
                                  textEditingController: controller.selectServiceController,
                                  label: CHOSE_SERVICES,
                                  icon: Icons.arrow_drop_down_sharp),
                            ),
                          ),
                          Positioned(
                              bottom: 1.h,
                              right: 1.w,
                              child: Text(
                                LIMIT_INFOR,
                                style: TextStyle(
                                    fontSize: fontSize_12,
                                    fontWeight: FontWeight.w500,
                                    color: PRIMARY_COLOR),
                              ))
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldSubTitleComponent(
                            label: EMAIL,
                            subTitle: OPTIONAL,
                            textInputType: TextInputType.emailAddress),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldSubTitleComponent(
                            label: CODE_USE,
                            subTitle: OPTIONAL,
                            textInputType: TextInputType.text),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldSubTitleComponent(
                            label: PHONE_NUMBER_REGISTER_3,
                            subTitle: OPTIONAL,
                            textInputType: TextInputType.phone),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: TextFieldPopupIconComponent(
                            label: PHONE_NUMBER_REGISTER_4,
                            icon: Icons.arrow_drop_down_sharp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Container(
              height: Get.size.height / 6,
              decoration: BoxDecoration(
                color: clr_white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    spreadRadius: 3,
                    blurRadius: 1,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: controller.isChecked,
                        onChanged: (value) {
                          controller.toggleCheckbox(controller.isChecked);
                        },
                        activeColor: PRIMARY_COLOR,
                        checkColor: clr_white,
                        tristate: false,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.h),
                        width: Get.size.width / 1.2,
                        child: RichText(
                          text: TextSpan(
                            text: '$TITLE_27 ',
                            style: TextStyle(
                              fontSize: fontSize_12,
                              color: clr_black54,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => controller
                                  .toggleCheckbox(controller.isChecked),
                            children: [
                              TextSpan(
                                  text: '$TITLE_28',
                                  style: TextStyle(
                                    fontSize: fontSize_12,
                                    color: PRIMARY_COLOR,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Get.toNamed('/terms_page',
                                        arguments: '')),
                              TextSpan(
                                text: ' $TITLE_29',
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  color: clr_black54,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => controller
                                      .toggleCheckbox(controller.isChecked),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: height_10),
                    child: ButtonComponent(
                      title: NEXT,
                      bgColor: button_color_home,
                      callback: () {},
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
