import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../register/view/register_page.dart';
import 'login_bottom_sheet.dart';

class Authentication extends StatelessWidget {
  const Authentication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 1,
        child: SizedBox(
          width: Get.size.width,
          child: Container(
            margin: EdgeInsets.only(left: 10.w, right: 10.w),
            alignment: Alignment.center,
            width: Get.size.width,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset:
                  const Offset(3, 3), // changes position of shadow
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
                    'Đăng ký',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}