import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/module/register/view/steps/register_step4.dart';

import '../../controller/register_controller.dart';

class RegisterStep3Page extends StatelessWidget {
  const RegisterStep3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Mở tài khoản cho khách hàng mới',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
          ),
          leading: InkWell(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: Get.size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 40, top: 10),
                alignment: Alignment.center,
                width: Get.size.width,
                child: SizedBox(
                  width: Get.size.width / 1.1,
                  child: const Text(
                    'Quý khách vui lòng nhập vào số điện thoại để đăng ký sử dụng dịch vụ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Số điện thoại đăng ký",
                  //babel text
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w400),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: 330,
                decoration: BoxDecoration(
                    color: Color(0xfff8f8f8),
                    borderRadius: BorderRadius.circular(10)),
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
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                          tristate: false,
                        );
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      width: Get.size.width / 1.3,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Tôi xác nhận: \n',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                          children: [
                            TextSpan(
                              text:
                                  'Tôi là người duy nhất kiểm soát các hoạt động và hưởng lợi ích từ tài khoản, tôi',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            TextSpan(
                              text: ' KHÔNG ',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text:
                                  'phải đối tượng tham gia thoả thuận pháp lý và ',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            TextSpan(
                              text: ' KHÔNG ',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text:
                                  'thuộc đối tượng chịu thuế thu nhập của Mỹ/ có một trong các dấu hiệu Mỹ \n \n',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            TextSpan(
                              text:
                                  'Tôi cam kết không bán, cho thuê, cho mượn tài khoản của mình và không sử dụng tài khoản của mình để thực hiện các giao dịch nhằm mục đích rửa tiền, thực hiện giao dịch liên quan đến tiền ảo, tài trợ khủng bố, lừa đảo gian lận hoặc các hành vi vi phạm pháp luật khác \n \n',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            TextSpan(
                              text: 'Tôi đã đọc, hiểu rõ và đồng ý với các ',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                            TextSpan(
                              text: 'điều kiện, điều khoản giao dịch chung',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text:
                                  'về tài khoản thanh toán, thẻ, dịch vụ ngân hàng điện tử.',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () => Get.to(const RegisterStep4Page()),
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 40),
                  height: 50,
                  width: Get.size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff00a5ae),
                        Color(0xff00a8ae),
                        Color(0xff00a8ae),
                        Color(0xff0081ae),
                        Color(0xff006cad),
                      ],
                    ),
                  ),
                  child: const Text(
                    'Tiếp tục',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
