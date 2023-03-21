import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(25.r),
            ),
          ),
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.only(
                  left: 20.w, right: 20.w, top: 20.h),
              height: Get.size.height / 1.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 25.w,
                          height: 25.h,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close,
                            size: 15.spMin,
                          ),
                        ),
                      ),
                      Container(
                        width: 40.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                            BorderRadius.circular(20.r)),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'EN',
                              style: TextStyle(
                                  fontWeight:
                                  FontWeight.w500),
                            ),
                            Image.network(
                              'https://cleandye.com/wp-content/uploads/2020/01/English-icon.png',
                              width: 15.w,
                              height: 15.h,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    width: 60.w,
                    height: 60.h,
                    decoration: const BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 30.spMin,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Số điện thoại",
                            //babel text
                            prefixIcon: const Icon(
                              Icons.phone,
                              color: Colors.red,
                            ),
                            labelStyle: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400),
                            disabledBorder:
                            const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black),
                            ),
                            focusedBorder:
                            const UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.redAccent),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      labelText: "Mật khẩu",
                                      //babel text
                                      prefixIcon: const Icon(
                                        Icons.lock,
                                        color: Colors.red,
                                      ),
                                      labelStyle: TextStyle(
                                          fontSize: 15.sp,
                                          color:
                                          Colors.black54,
                                          fontWeight:
                                          FontWeight
                                              .w400),
                                      focusedBorder:
                                      const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors
                                                .redAccent),
                                      ),
                                      disabledBorder:
                                      const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors
                                                  .grey)))),
                              Positioned(
                                  right: 5.w,
                                  child: Text(
                                    'Quên mật khẩu',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight:
                                        FontWeight.w500,
                                        color: Colors.black38),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    alignment: Alignment.center,
                    width: Get.size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(10.r),
                      color: Colors.red,
                    ),
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    child: Column(
                      children: [
                        Text(
                          'Hướng dẫn chuyển đổi',
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Đăng ký',
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
      child: Text(
        'Đăng nhập',
        style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.redAccent),
      ),
    );
  }
}