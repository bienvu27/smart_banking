import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/button/button_component.dart';

import '../../../../res/my_color .dart';
import '../../../components/app_bar/app_bar_component.dart';
import '../../../components/text_field/text_field_component.dart';
import '../../../components/text_field/text_field_popup_icon_component.dart';
import '../../../components/text_field/text_field_subtile_component.dart';
import '../../controller/register_controller.dart';

class RegisterInformation extends StatefulWidget {
  const RegisterInformation({Key? key}) : super(key: key);

  @override
  State<RegisterInformation> createState() => _RegisterInformationState();
}

class _RegisterInformationState extends State<RegisterInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        title: 'Thông tin đăng ký',
        callback: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10.h),
          width: Get.size.width,
          height: Get.size.height * 1.1,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: const TextFieldComponent(
                    label: 'Họ và tên',
                    textInputType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: const TextFieldComponent(
                      label: 'Số tài khoản', textInputType: TextInputType.text),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: const TextFieldPopupIconComponent(
                      label: 'Ngày sinh', icon: Icons.date_range),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: const TextFieldComponent(
                    label: 'Số CMND/ CCCD/ HC',
                    textInputType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: const TextFieldComponent(
                      label: 'Số điện thoại đăng nhập',
                      textInputType: TextInputType.phone),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: const TextFieldComponent(
                      label: 'Số điện thoại nhận OTP',
                      textInputType: TextInputType.phone),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20.h),
                      child: const TextFieldPopupIconComponent(
                          label: 'Chọn gói dịch vụ',
                          icon: Icons.arrow_drop_down_sharp),
                    ),
                    Positioned(
                        bottom: 1.h,
                        right: 1.w,
                        child: Text(
                          'Thông tin hạn mức',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: MyColor.PRIMARY_COLOR_BLUE),
                        ))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: const TextFieldSubTitleComponent(
                      label: 'Email',
                      subTitle: '(Không bắt buộc)',
                      textInputType: TextInputType.emailAddress),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const TextFieldSubTitleComponent(
                      label: 'Mã cán bộ tiếp thị',
                      subTitle: '(Không bắt buộc)',
                      textInputType: TextInputType.text),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const TextFieldSubTitleComponent(
                      label: 'Số điện thoại người giới thiệu',
                      subTitle: '(Không bắt buộc)',
                      textInputType: TextInputType.phone),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const TextFieldPopupIconComponent(
                      label: 'Chọn mã giới thiệu đặc trưng',
                      icon: Icons.arrow_drop_down_sharp),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 110.h,
        decoration: BoxDecoration(
          color: Colors.white,
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
                GetBuilder<RegisterPageController>(
                  init: RegisterPageController(),
                  builder: (controller) {
                    return Checkbox(
                      value: controller.isChecked,
                      onChanged: (value) {
                        controller.toggleCheckbox(controller.isChecked);
                      },
                      activeColor: MyColor.PRIMARY_COLOR_BLUE,
                      checkColor: Colors.white,
                      tristate: false,
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.h),
                  width: Get.size.width / 1.2,
                  child: RichText(
                    text: TextSpan(
                      text: 'Tôi đã đọc và đồng ý với ',
                      style: TextStyle(fontSize: 13.sp, color: Colors.black54),
                      children: [
                        TextSpan(
                          text: 'điều kiện và điều khoản ',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: MyColor.PRIMARY_COLOR_BLUE,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: 'đăng ký dịch vụ BRD.',
                          style: TextStyle(fontSize: 13.sp, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            ButtonComponent(title: 'Tiếp tục', callback: () {},),

          ],
        ),
      ),
    );
  }
}
