import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style.dart';
import '../../register/view/register_page.dart';
import 'login_bottom_sheet.dart';

class Authentication extends StatelessWidget {
  const Authentication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = Get.size.width;
    final height = Get.size.height;
    return Positioned(
        bottom: 1,
        child: SizedBox(
          width: width,
          child: Container(
            margin: EdgeInsets.only(left: 10.w, right: 10.w),
            alignment: Alignment.center,
            width: Get.size.width,
            height: 55.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset:
                  const Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const LoginBottomSheet(),
                InkWell(
                  onTap: () => Get.to(const RegisterPage()),
                  child: Text(
                    SIGN_IN,
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: clr_black54),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}