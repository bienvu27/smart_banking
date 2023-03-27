import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/register/view/steps/register_step3.dart';

import '../../../../core/style.dart';
import '../../../../res/my_color .dart';
import '../../../components/app_bar/app_bar_component.dart';
import '../../../components/button/button_component.dart';

class RegisterStep2Page extends StatelessWidget {
  const RegisterStep2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarComponent(
          title: '',
          callback: () => Get.back(),
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            height: Get.size.height,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  alignment: Alignment.center,
                  width: Get.size.width,
                  child: SizedBox(
                    width: Get.size.width / 1.5,
                    child: Text(
                      'Cùng VRB thử nghiệm công nghệ định danh số hoàn toàn mới',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                          color: MyColor.PRIMARY_COLOR_BLUE),
                    ),
                  ),
                ),
                Image.network(
                  'https://cdni.iconscout.com/illustration/premium/thumb/face-id-security-3887131-3240391.png',
                  width: 250.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 20.h),
                  child: SizedBox(
                    width: Get.size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          width: Get.size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.av_timer),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Get.size.width / 1.3,
                                    child: Text(
                                      'Mở tài khoản thanh toán dễ dàng và nhanh chóng',
                                      style: TextStyle(fontSize: 15.sp),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    width: Get.size.width / 1.2,
                                    height: 1, // Thickness
                                    color: Colors.black12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          width: Get.size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                (Icons.phone_iphone),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Get.size.width / 1.3,
                                    child: Text(
                                      'Đăng ký dịch vụ ngân hàng điện tử SmartBanking thoả sức giao dịch trực tuyến',
                                      style: TextStyle(fontSize: 15.sp),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10.h),
                                    width: Get.size.width / 1.2,
                                    height: 1, // Thickness
                                    color: Colors.black12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20.h),
                          width: Get.size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.change_circle_outlined),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Get.size.width / 1.3,
                                    child: Text(
                                      'Trải nghiệm mới cùng BIDV với thật nhiều ưu đã đang chờ đón',
                                      style: TextStyle(fontSize: 15.sp),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10.h),
                                    width: Get.size.width / 1.2,
                                    height: 1, // Thickness
                                    color: Colors.black12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 90.h,
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
          ), // Get.to(const RegisterStep3Page()
          child: ButtonComponent(
            title: 'Đăng ký ngay',
            bgColor: button_color_home,
            callback: () => Get.to(
              const RegisterStep3Page(),
            ),
          ),
        ));
  }
}
