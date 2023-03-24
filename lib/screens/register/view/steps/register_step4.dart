import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../res/my_color .dart';
import '../../../components/app_bar/app_bar_component.dart';
import '../../../components/button/button_component.dart';
import '../components/radio_button.dart';

class RegisterStep4Page extends StatelessWidget {
  const RegisterStep4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarComponent(
          title: 'Chọn giấy tờ xác thực',
          callback: () => Get.back(),
        ),
        body: Container(
          height: Get.size.height,
          color: Colors.transparent,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
                alignment: Alignment.center,
                width: Get.size.width,
                child: SizedBox(
                  width: Get.size.width / 1.1,
                  child: Text(
                    'Quý khách vui lòng chọn giấy tờ xác thực',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              ),
              const RadioButton(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 380.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(1, 3),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      width: Get.size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: MyColor.PRIMARY_COLOR_BLUE,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            width: Get.size.width / 1.25,
                            child: Text(
                              'Vui lòng sử dụng giấy tờ gốc (bản chính), còn hạn sử dụng',
                              style: TextStyle(fontSize: 15.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10.h),
                      width: Get.size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: MyColor.PRIMARY_COLOR_BLUE,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            width: Get.size.width / 1.25,
                            child: Text(
                              'Chụp ảnh trong môi trường sáng đảm bảo rõ nét, không bị mờ loá, không bị mất góc',
                              style: TextStyle(fontSize: 15.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30.h),
                      width: Get.size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: MyColor.PRIMARY_COLOR_BLUE,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            width: Get.size.width / 1.25,
                            child: Text(
                              'Khách hàng không sử dụng Giấy tờ tuỳ thân giả mạo, không chính chủ. Khách hàng chịu hoàn  toàn trách nhiệm trước pháp luật về thông tin Giấy tờ tuỳ thân cung cấp cho ngân hàng',
                              style: TextStyle(fontSize: 15.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4341/4341131.png',
                                    width: 80.w,
                                    height: 60.h,
                                  ),
                                  Positioned(
                                    top: 10.h,
                                    right: 1.w,
                                    child: Container(
                                      width: 15.w,
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                      child: Icon(
                                        Icons.close,
                                        size: 15.spMin,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 60.w,
                                child: Text(
                                  'Không chụp quá mờ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: MyColor.PRIMARY_COLOR_BLUE, height: 1.5),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4341/4341131.png',
                                    width: 80.w,
                                    height: 60.h,
                                  ),
                                  Positioned(
                                    top: 10.h,
                                    right: 1.w,
                                    child: Container(
                                      width: 15.w,
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                      child: Icon(
                                        Icons.close,
                                        size: 15.spMin,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 60.w,
                                child: Text(
                                  'Không chụp mất góc',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: MyColor.PRIMARY_COLOR_BLUE, height: 1.5),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4341/4341131.png',
                                    width: 80.w,
                                    height: 60.h,
                                  ),
                                  Positioned(
                                    top: 10.h,
                                    right: 1.w,
                                    child: Container(
                                      width: 15.w,
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                      child: Icon(
                                        Icons.close,
                                        size: 15.spMin,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 60.w,
                                child: Text(
                                  'Không chụp loá sáng',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: MyColor.PRIMARY_COLOR_BLUE, height: 1.5),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ButtonComponent(title: 'Tiếp tục', callback: () {},)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
