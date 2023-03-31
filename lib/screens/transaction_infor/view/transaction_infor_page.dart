import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;
import '../../../core/resources/strings.dart';
import '../../../core/style/style.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../../components/button/button_component.dart';
import '../../components/text_field/text_field_component.dart';

class TransactionInforPage extends StatelessWidget {
  const TransactionInforPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: TRANSACTION_INFOR,
        iconAction: Icons.info_outline,
        callback: () => Get.back(),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.h),
        color: clr_white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
                padding: EdgeInsets.only(left: 30.w),
                height: 90.h,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: const LinearGradient(colors: [
                      clr_button_5,
                      clr_button_4,
                      clr_button_3,
                      clr_button_2,
                      clr_button_1,
                    ])),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundColor: clr_d5d6d7,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 25.spMax,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '21610000542522',
                            style: TextStyle(
                              color: clr_white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            '6,345,293 VND',
                            style: TextStyle(
                              color: clr_white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
                padding: EdgeInsets.only(right: 30.w),
                height: 90.h,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: const LinearGradient(colors: [
                      clr_button_1,
                      clr_button_2,
                      clr_button_3,
                      clr_button_4,
                      clr_button_5,
                    ])),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '27910000492884',
                            style: TextStyle(
                              color: clr_white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            'hoang thi thuy mai'.toUpperCase(),
                            style: TextStyle(
                              color: clr_white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      CircleAvatar(
                        backgroundColor: clr_f6f5f7,
                        radius: 20.r,
                        child: Image.asset(
                          'assets/images/vrbank.png',
                          width: 30.w,
                          height: 30.h,
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                child: TextField(
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w900),
                  decoration: InputDecoration(
                    labelText: AMOUT_OF_MONEY,
                    suffixText: VND,
                    suffixStyle: TextStyle(color: clr_black, fontSize: 18.sp, fontWeight: FontWeight.w500),
                    labelStyle: TextStyle(fontSize: 17.sp, color: Colors.black54, fontWeight: FontWeight.w500),
                    disabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: clr_black),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: PRIMARY_COLOR),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                child: TextFieldComponent(label: 'Nội dung giao dịch', textInputType: TextInputType.text),
              )
            ],
          ),
        ),

      ),
        bottomNavigationBar: Container(
          height: 55.h,
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
          ), // Get.to(const RegisterStep3Page()
          child: ButtonComponent(
            title: NEXT,
            bgColor: button_color_home,
            callback: () => Get.toNamed("/transaction_confirm", arguments: '')),
          ),
        );
  }
}

