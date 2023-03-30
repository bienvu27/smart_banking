import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class InforUser extends StatelessWidget {
  const InforUser({
    super.key,
  });

  @override
  Widget build(BuildContext conteaxt) {
    return Positioned(
        bottom: 0,
        child: SizedBox(
          width: Get.size.width,
          child: Container(
            margin: EdgeInsets.only(left: 10.w, right: 10.w),
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            alignment: Alignment.center,
            width: Get.size.width,
            height: 80.w,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tài khoản thanh toán',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 5.h,),
                    Row(
                      children: [
                        Text(
                          '21610000542522',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w900),
                        ),
                        const Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 5.h, bottom: 5.h, right: 10.w, left: 10.w),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Danh sách',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 13.spMin,
                        color: Colors.black54,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
