import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/module/register/view/steps/register_step2.dart';

import 'components/custom_dialog.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Đăng ký SmartBanking',
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
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) => CustomDialog(
                          clickCallback: () {
                            Navigator.pop(context);
                            Get.to(const RegisterStep2Page());
                          } ,
                        ));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(left: 10, right: 20),
                height: 80,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.size.width / 1.5,
                      child: Text(
                        'Đăng ký cho khách hàng chưa có thông tin tại BIDV',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black38,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) => CustomDialog(
                          clickCallback: () {
                            Navigator.pop(context);
                          },
                        ));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(left: 10, right: 20),
                height: 90,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.size.width / 1.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Đăng ký cho khách hàng đã có tài khoản thanh toán VNĐ mở tại BIDV',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Xác thực tự động qua bộ câu hỏi hoặc xác thực qua thông tin thẻ ghi nợ nội địa (thẻ ATM) trên ứng dụng Smartbaking',
                            style:
                                TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Colors.black38,
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: Get.size.height,
            )
          ],
        ),
      ),
    );
  }
}
