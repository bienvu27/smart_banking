import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/settings_component.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(bottom: 20.h),
                  height: 250.h,
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30.h, bottom: 10.h),
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
                      Text(
                        'Chào buổi sáng!',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      Text(
                        'Vu Xuan Bien',
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 50.h,
                    right: 10.w,
                    child: Container(
                      width: 80.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Thoát',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500)),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15.spMin,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ))
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cá nhân',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20.h,),
                  SettingComponent(title: 'Đổi ảnh đại diện', icon: Icons.account_circle, callback: () {},),
                  SettingComponent(title: 'Đổi ảnh nền', icon: Icons.broken_image_outlined, callback: () {},),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cài đặt nâng cao',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(height: 20.h,),
                  SettingComponent(title: 'Danh bạ chuyển tiền', icon: Icons.phone_iphone, callback: () {},),
                  SettingComponent(title: 'Mẫu thanh toán', icon: Icons.sd_card, callback: () {},),
                  SettingComponent(title: 'Đổi lại mật khẩu', icon: Icons.lock, callback: () {},),
                  SettingComponent(title: 'Cài đặt đăng nhập', icon: Icons.vpn_lock, callback: () {},),
                  SettingComponent(title: 'Cài đặt khác', icon: Icons.fingerprint, callback: () {},),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


