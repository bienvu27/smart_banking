import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/style/style.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    super.key, required this.title, required this.callback, required this.bgColor,
  });
  final String title;
  final VoidCallback callback;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
            height: 40.h,
            width: Get.size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
                gradient: const LinearGradient(
                    colors: [
                      clr_button_1,
                      clr_button_2,
                      clr_button_3,
                      clr_button_4,
                      clr_button_5,
                    ])
            ),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: clr_white),
            ),
          ),
        ],
      ),
    );
  }
}