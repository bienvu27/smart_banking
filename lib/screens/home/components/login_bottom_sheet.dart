import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/text_field/text_field_icon_subtile_component.dart';

import '../../../res/my_color .dart';
import '../../components/button/button_component.dart';
import '../../components/text_field/text_field_component.dart';
import '../../components/text_field/text_field_icon_component.dart';

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
              margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
              height: Get.size.height / 1.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(20.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'EN',
                              style: TextStyle(fontWeight: FontWeight.w500),
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
                      size: 35.spMin,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    child: Column(
                      children: [
                        TextFieldIconComponent(
                            labelText: 'Số điện thoại', icon: Icons.phone, textInputType: TextInputType.number),
                        Container(
                            margin: EdgeInsets.only(top: 20.h),
                            child: const TextFieldIconSubTitleComponent(
                              label: "Mật khẩu",
                              textInputType: TextInputType.text,
                              subTitle: 'Quên mật khẩu',
                              obscureText: true,
                              icon: Icons.lock,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: ButtonComponent(title: 'Đăng nhập', callback: () {}),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    child: Column(
                      children: [
                        Text(
                          'Hướng dẫn chuyển đổi',
                          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: MyColor.PRIMARY_COLOR_BLUE),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Đăng ký',
                          style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: MyColor.PRIMARY_COLOR_BLUE),
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
        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500, color: MyColor.PRIMARY_COLOR_BLUE),
      ),
    );
  }
}
