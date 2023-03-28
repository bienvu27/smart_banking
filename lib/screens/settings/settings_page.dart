import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/resources/strings.dart';
import '../../core/style.dart';
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
                          color: clr_black12,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          size: 35.spMin,
                          color: clr_white,
                        ),
                      ),
                      Text(
                        GOOD_MORNING,
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: clr_white54),
                      ),
                      Text(
                        'Vu Xuan Bien',
                        style: TextStyle(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w500,
                            color: clr_black),
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
                          color: clr_yellow100,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(EXIT,
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: PRIMARY_COLOR_RED,
                                  fontWeight: FontWeight.w500)),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15.spMin,
                            color: PRIMARY_COLOR_RED,
                          )
                        ],
                      ),
                    ))
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
              color: clr_white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    PERSONAL,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: clr_black),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SettingComponent(
                    title: CHANGE_AVATAR,
                    icon: Icons.account_circle_outlined,
                    callback: () {},
                  ),
                  SettingComponent(
                    title: CHANGE_BG,
                    icon: Icons.broken_image_outlined,
                    callback: () {},
                  ),
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
                    ADVANCED_SETTINGS,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: clr_black),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SettingComponent(
                    title: TRANSFER_CONTACTS,
                    icon: Icons.phone_iphone,
                    callback: () {},
                  ),
                  SettingComponent(
                    title: PAYMENT_FORM,
                    icon: Icons.sd_card,
                    callback: () {},
                  ),
                  SettingComponent(
                    title: CHANGE_PASSWORD,
                    icon: Icons.lock,
                    callback: () {},
                  ),
                  SettingComponent(
                    title: LOGIN_SETTING,
                    icon: Icons.vpn_lock,
                    callback: () {},
                  ),
                  SettingComponent(
                    title: OTHER_SETTINGS,
                    icon: Icons.fingerprint,
                    callback: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
