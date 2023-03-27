import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/style.dart';
import '../../../res/my_color .dart';
import '../../components/dialog/custom_dialog.dart';
import '../../home/view/home_page.dart';
import '../../notification/notifications_page.dart';
import '../../promotion/promotion_page.dart';
import '../../settings/settings_page.dart';
import '../controller/dashboard_controller.dart';

class DashboardBottomNavigatorBar extends StatelessWidget {
   DashboardBottomNavigatorBar({
    super.key,
  });

  final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: SizedBox(
        height: 60.h,
        width: Get.size.width,
        child: Row(
          children: [
            Flexible(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        controller.currentScreen = const HomePage();
                        controller.changeTabIndex(0);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: 22.spMax,
                            color: controller.currentTab == 0 ? clr_active_button : clr_unactive_button,
                          ),
                          Text(
                            'Trang chủ',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: controller.currentTab == 0 ? clr_active_button : clr_unactive_button,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        controller.currentScreen = const PromotionPage();
                        // showDialog(
                        //     barrierDismissible: false,
                        //     context: context,
                        //     builder: (BuildContext context) => CustomDialog(
                        //       title: 'Quý khách cần kích hoạt ứng dụng trước để sử dụng chức năng này.',
                        //       cancel: 'Huỷ bỏ',
                        //       submit: 'Đăng nhập',
                        //       clickCallback: () {
                        //       },
                        //     ));
                        controller.changeTabIndex(1);
                        // controller.changeTabIndex(0);
                        // controller.currentTab = 1;
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.blur_circular,
                            size: 22.spMax,
                            color: controller.currentTab == 1 ? clr_active_button : clr_unactive_button,
                          ),
                          Text(
                            'Đổi quà',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: controller.currentTab == 1 ? clr_active_button : clr_unactive_button,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) => CustomDialog(
                              title: 'Quý khách cần kích hoạt ứng dụng trước để sử dụng chức năng này.',
                              cancel: 'Huỷ bỏ',
                              submit: 'Đăng nhập',
                              clickCallback: () {
                              },
                            ));
                        controller.changeTabIndex(0);
                        // currentScreen = const QRCode_Page();
                        // currentTab = 3;
                      },
                      child: Text(
                        'Quét QR',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: controller.currentTab == 3 ? clr_active_button : clr_unactive_button,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      controller.currentScreen = const NotificationPage();
                      // showDialog(
                      //     barrierDismissible: false,
                      //     context: context,
                      //     builder: (BuildContext context) => CustomDialog(
                      //       title: 'Quý khách cần kích hoạt ứng dụng trước để sử dụng chức năng này.',
                      //       cancel: 'Huỷ bỏ',
                      //       submit: 'Đăng nhập',
                      //       clickCallback: () {
                      //       },
                      //     ));
                      controller.changeTabIndex(4);

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 22.spMax,
                          color: controller.currentTab == 4 ? clr_active_button : clr_unactive_button,
                        ),
                        Text(
                          'Thông báo',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: controller.currentTab == 4 ? clr_active_button : clr_unactive_button,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.currentScreen = const SettingsPage();
                      // showDialog(
                      //     barrierDismissible: false,
                      //     context: context,
                      //     builder: (BuildContext context) => CustomDialog(
                      //       title: 'Quý khách cần kích hoạt ứng dụng trước để sử dụng chức năng này.',
                      //       cancel: 'Huỷ bỏ',
                      //       submit: 'Đăng nhập',
                      //       clickCallback: () {
                      //       },
                      //     ));
                      controller.changeTabIndex(5);
                      // controller.changeTabIndex(0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          size: 22.spMax,
                          color: controller.currentTab == 5 ? clr_active_button : clr_unactive_button,
                        ),
                        Text(
                          'Cài đặt',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: controller.currentTab == 5 ? clr_active_button : clr_unactive_button,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
