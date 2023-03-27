import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/register/view/steps/register_step4.dart';

import '../../../../core/style.dart';
import '../../../../res/my_color .dart';
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
          title: 'Mở tài khoản cho khách hàng mới',
          callback: () => Get.back(),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10.h),
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          height: Get.size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 40.h, top: 10.h),
                alignment: Alignment.center,
                width: Get.size.width,
                child: SizedBox(
                  width: Get.size.width / 1.1,
                  child: Text(
                    'Quý khách vui lòng nhập vào số điện thoại để đăng ký sử dụng dịch vụ',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              TextFieldIconComponent(
                  labelText: 'Số điện thoại đăng ký', icon: Icons.phone, textInputType: TextInputType.number),
              Container(
                margin: EdgeInsets.only(top: 40.h, bottom: 30.h),
                height: 250.h,
                decoration: BoxDecoration(
                    color: const Color(0xfff8f8f8),
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
                          activeColor: MyColor.PRIMARY_COLOR_BLUE,
                          checkColor: Colors.white,
                          tristate: false,
                        );
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10.h),
                      width: Get.size.width / 1.3,
                      child: RichText(
                        text: TextSpan(
                          text: 'Tôi xác nhận: \n',
                          style:
                              TextStyle(fontSize: 13.sp, color: Colors.black54),
                          children: [
                            TextSpan(
                              text:
                                  'Tôi là người duy nhất kiểm soát các hoạt động và hưởng lợi ích từ tài khoản, tôi',
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.black54),
                            ),
                            TextSpan(
                              text: ' KHÔNG ',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text:
                                  'phải đối tượng tham gia thoả thuận pháp lý và ',
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.black54),
                            ),
                            TextSpan(
                              text: ' KHÔNG ',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text:
                                  'thuộc đối tượng chịu thuế thu nhập của Mỹ/ có một trong các dấu hiệu Mỹ \n \n',
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.black54),
                            ),
                            TextSpan(
                              text:
                                  'Tôi cam kết không bán, cho thuê, cho mượn tài khoản của mình và không sử dụng tài khoản của mình để thực hiện các giao dịch nhằm mục đích rửa tiền, thực hiện giao dịch liên quan đến tiền ảo, tài trợ khủng bố, lừa đảo gian lận hoặc các hành vi vi phạm pháp luật khác \n \n',
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.black54),
                            ),
                            TextSpan(
                              text: 'Tôi đã đọc, hiểu rõ và đồng ý với các ',
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.black54),
                            ),
                            TextSpan(
                              text: 'điều kiện, điều khoản giao dịch chung ',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: MyColor.PRIMARY_COLOR_BLUE,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text:
                                  'về tài khoản thanh toán, thẻ, dịch vụ ngân hàng điện tử.',
                              style: TextStyle(
                                  fontSize: 13.sp, color: Colors.black54),
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
                title: 'Tiếp tục',
                bgColor: button_color_home,
                callback: () => Get.to(const RegisterStep4Page()),
              ),
            ],
          ),
        ));
  }
}
