import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/style.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../../components/button/button_component.dart';
import '../components/title_components.dart';

class TransactionConfirmationPage extends StatelessWidget {
  const TransactionConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: TRANSACTION_CONFIRM,
        callback: () => Get.back(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.h),
              padding: EdgeInsets.only(bottom: 20.h),
              color: clr_white,
              child: Column(
                children: const [
                  TitleComponents(title: TITLE_37, subTitle: '2160000542522', color: clr_black),
                  TitleComponents(title: TITLE_38, subTitle: '2160000542522', color: PRIMARY_COLOR),
                  TitleComponents(title: TITLE_39, subTitle: 'HOÀNG THỊ THUỲ MAI', color: PRIMARY_COLOR),
                  TitleComponents(title: TITLE_40, subTitle: 'BIDV', color: PRIMARY_COLOR),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              padding: EdgeInsets.only(bottom: 20.h),
              color: clr_white,
              child: Column(
                children: const [
                  TitleComponents(title: AMOUT_OF_MONEY, subTitle: '10,000 VND', color: PRIMARY_COLOR),
                  TitleComponents(title: AMOUT_OF_MONEY2, subTitle: '10,000 VND', color: PRIMARY_COLOR),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              padding: EdgeInsets.only(bottom: 20.h),
              color: clr_white,
              child: Column(
                children: const [
                  TitleComponents(title: TITLE_41, subTitle: '28/03/2023 15:19:57', color: clr_black),
                  TitleComponents(title: DESCRIPTIONS, subTitle: 'CAO VAN HOANG Chuyen tien', color: clr_black),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 180.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
                height: 170.h,
                child: Container(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.r),
                        topLeft: Radius.circular(20.r),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 2.0,
                        ),
                      ]
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(top: 10.h),
                          child: Text(
                            TITLE_42,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: clr_black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            OTPTextField(
                              length: 6,
                              width: 250.w,
                              fieldWidth: 30.w,
                              style: TextStyle(fontSize: 15.sp),
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.underline,
                              onCompleted: (pin) {
                                print("Completed: " + pin);
                              },
                            ),
                            Icon(
                              Icons.keyboard_voice_outlined,
                              size: 25.spMax,
                              color: clr_black26,
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: ButtonComponent(
                            title: CONFIRM,
                            bgColor: button_color_home,
                            callback: () => Get.toNamed("/transaction_confirm", arguments: '')),
                      ),
                    ],
                  ),
                )
            ),
            Positioned(
              top: 0,
              child: CircleAvatar(
                  backgroundColor: clr_2dcabc,
                  radius: 10.r,
                  child: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 20.spMax,
                    color: clr_white,
                  )),
            ),
          ],
        )
      ),
    );
  }
}
