import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/register/view/steps/register_step2.dart';
import 'package:smart_banking/screens/register/view/steps/rigister_information.dart';

import '../../components/app_bar/app_bar_component.dart';
import '../../components/dialog/custom_dialog.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        title: 'Đăng ký SmartBanking',
        callback: () => Get.back(),
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
                          title:
                              'Quý khách vui lòng nhấn lại link giới thiệu để được hưởng khuyến mại theo chương trình KH giới thiệu KH. Trường hợp không có người giới thiệu vui lòng bỏ qua thông báo này',
                          cancel: 'Đóng',
                          submit: 'Tiếp tục',
                          clickCallback: () {
                            Navigator.pop(context);
                            Get.to(const RegisterStep2Page());
                          },
                        ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.h),
                padding: EdgeInsets.only(left: 10.w, right: 20.w),
                height: 60.h,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.size.width / 1.4,
                      child: Text(
                        'Đăng ký cho khách hàng chưa có thông tin tại BRD',
                        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17.spMin,
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
                          title:
                              'Quý khách vui lòng nhấn lại link giới thiệu để được hưởng khuyến mại theo chương trình KH giới thiệu KH. Trường hợp không có người giới thiệu vui lòng bỏ qua thông báo này',
                          cancel: 'Đóng',
                          submit: 'Tiếp tục',
                          clickCallback: () {
                            Navigator.pop(context);
                            Get.to(const RegisterInformation());
                          },
                        ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.w),
                padding: EdgeInsets.only(left: 10.w, right: 20.w, top: 10.h),
                height: 80.h,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.size.width / 1.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Đăng ký cho khách hàng đã có tài khoản thanh toán VNĐ mở tại BRD',
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Xác thực tự động qua bộ câu hỏi hoặc xác thực qua thông tin thẻ ghi nợ nội địa (thẻ ATM) trên ứng dụng Smartbaking',
                            style: TextStyle(fontSize: 13.sp, color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 17.spMin,
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
