import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/resources/strings.dart';
import '../../../../core/style.dart';
import '../../../../res/my_color .dart';
import '../../../components/app_bar/app_bar_component.dart';
import '../../../components/button/button_component.dart';
import '../components/radio_button.dart';

class RegisterStep4Page extends StatelessWidget {
  const RegisterStep4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xff01bbae),
              Color(0xff00a2ae),
              Color(0xff00a2ae),
              Color(0xff0181ad),
              Color(0xff026c90),
            ])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarComponent(
          bgColor: Colors.transparent,
          colorTitle: clr_white,
          colorIcon: clr_white,
          title: SELECT_DOCUMENTS,
          callback: () => Get.back(),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10.h, top: 10.h),
                alignment: Alignment.center,
                width: Get.size.width,
                child: SizedBox(
                  width: Get.size.width / 1.1,
                  child: Text(
                    TITLE_18,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: clr_white),
                  ),
                ),
              ),
              const RadioButton(),
              Container(
                margin: EdgeInsets.only(top: 50.h),
                padding: EdgeInsets.only(bottom: 10.h),
                width: Get.size.width,
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
                  padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w, bottom: 20.h),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10.h),
                        width: Get.size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.check_circle,
                              color: clr_active_button,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.w),
                              width: Get.size.width / 1.3,
                              child: Text(
                                TITLE_21,
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
                            const Icon(
                              Icons.check_circle,
                              color: clr_active_button,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.w),
                              width: Get.size.width / 1.3,
                              child: Text(
                                TITLE_22,
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        width: Get.size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.check_circle,
                              color: clr_active_button,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.w),
                              width: Get.size.width / 1.3,
                              child: Text(
                                TITLE_23,
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
                                  child: const Text(
                                    TITLE_24,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: PRIMARY_COLOR_RED, height: 1.5),
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
                                  child: const Text(
                                    TITLE_25,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: PRIMARY_COLOR_RED, height: 1.5),
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
                                  child: const Text(
                                    TITLE_26,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: PRIMARY_COLOR_RED, height: 1.5),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 20.h),
                          child: ButtonComponent(title: NEXT, bgColor: button_color_home, callback: () {},))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
