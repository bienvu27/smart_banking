import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/register/view/steps/photo_id_screen.dart';

import '../../../../core/resources/asset.dart';
import '../../../../res/strings/strings.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../../components/app_bar/app_bar_component.dart';
import '../../../components/button/button_component.dart';
import '../components/radio_button.dart';
import 'dart:math' as math;

class RegisterStep4Page extends StatelessWidget {
  const RegisterStep4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.size.height,
      decoration: BoxDecoration(gradient: linearGradientBgRegister),
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
                margin: EdgeInsets.only(
                  bottom: height_8,
                  top: height_8,
                ),
                alignment: Alignment.center,
                width: Get.size.width,
                child: SizedBox(
                  width: Get.size.width / 1.1,
                  child: Text(
                    TITLE_18,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: fontSize_12,
                      fontWeight: FontWeight.w400,
                      color: clr_white,
                    ),
                  ),
                ),
              ),
              const RadioButton(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(top: height_20),
          padding: EdgeInsets.only(bottom: height_8),
          width: Get.size.width,
          height: Get.size.height / 2,
          decoration: BoxDecoration(
            color: clr_white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(border_16),
              topRight: Radius.circular(border_16),
            ),
            boxShadow: [bottomNavigationBar],
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: height_8,
              left: width_8,
              right: width_8,
              bottom: height_8,
            ),
            child: SingleChildScrollView(
              child: SizedBox(
                height: Get.size.height / 2.2,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: height_8),
                      width: Get.size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: clr_active_button,
                            size: fontSize_20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: width_8),
                            width: Get.size.width / 1.3,
                            child: Text(
                              TITLE_21,
                              style: TextStyle(fontSize: fontSize_11),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: height_8),
                      width: Get.size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: clr_active_button,
                            size: fontSize_20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: width_8),
                            width: Get.size.width / 1.3,
                            child: Text(
                              TITLE_22,
                              style: TextStyle(fontSize: fontSize_11),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: height_8),
                      width: Get.size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: clr_active_button,
                            size: fontSize_20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: width_8),
                            width: Get.size.width / 1.3,
                            child: Text(
                              TITLE_23,
                              style: TextStyle(fontSize: fontSize_11),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    cccdIcon,
                                    width: 90.w,
                                    height: 60.h,
                                  ),
                                  Positioned(
                                    top: 5.h,
                                    right: 0.w,
                                    child: Container(
                                      width: 25.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.close,
                                        size: 20.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: Get.size.width / 5,
                                child: const Text(
                                  TITLE_24,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: PRIMARY_COLOR_RED,
                                    height: 1.5,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 90.w,
                                    height: 60.h,
                                    child: Transform.rotate(
                                      angle: (math.pi / 180) * -20,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: Image.asset(
                                              cccdIcon,
                                              width: 90.w,
                                              height: 60.h,
                                            ),
                                          ),
                                          Container(
                                            width: 90.w,
                                            height: 30.h,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 5.h,
                                    right: 0,
                                    child: Container(
                                      width: 25.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.close,
                                        size: 20.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: Get.size.width / 5,
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
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    cccdIcon,
                                    width: 90.w,
                                    height: 60.h,
                                    color: Colors.white.withOpacity(0.5),
                                    colorBlendMode: BlendMode.modulate,
                                  ),
                                  Positioned(
                                    top: 5.h,
                                    right: 0,
                                    child: Container(
                                      width: 25.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.close,
                                        size: 20.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: Get.size.width / 5,
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
                    Spacer(),
                    Container(
                        child: ButtonComponent(
                      title: NEXT,
                      bgColor: button_color_home,
                      callback: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhotoIdScreen(
                                      sideID: "front",
                                    )));
                      },
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
