import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/register/view/steps/register_step2.dart';
import 'package:smart_banking/screens/register/view/steps/rigister_information.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../../components/dialog/custom_dialog.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: SIGNUP_FOR_SB,
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
                          TITLE_1,
                          cancel: CANCEL,
                          submit: NEXT,
                          clickCallback: () {
                            Navigator.pop(context);
                            Get.to(const RegisterStep2Page());
                          },
                        ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.h),
                padding: EdgeInsets.only(left: 10.w, right: 20.w, top: 10.h, bottom: 10.h),
                color: clr_white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.size.width / 1.4,
                      child: Text(
                        TITLE_2,
                        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: clr_black),
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
                          TITLE_1,
                          cancel: CANCEL,
                          submit: NEXT,
                          clickCallback: () {
                            Navigator.pop(context);
                            Get.to(const RegisterInformation());
                          },
                        ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 10.w),
                padding: EdgeInsets.only(left: 10.w, right: 20.w, top: 10.h, bottom: 10.h),
                color: clr_white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.size.width / 1.3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TITLE_3,
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            TITLE_4,
                            style: TextStyle(fontSize: 13.sp, color: clr_black38),
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
