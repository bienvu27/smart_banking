import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
      notchMargin: 10,
      child: SizedBox(
        height: 60.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40.w,
                  onPressed: () {
                    controller.currentScreen = const HomePage();
                    controller.changeTabIndex(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: controller.currentTab == 0 ? MyColor.PRIMARY_COLOR_BLUE : Colors.grey,
                      ),
                      Text(
                        'Trang chủ',
                        style: TextStyle(
                          color: controller.currentTab == 0 ? MyColor.PRIMARY_COLOR_BLUE : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40.w,
                  onPressed: () {
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
                        color: controller.currentTab == 1 ? MyColor.PRIMARY_COLOR_BLUE : Colors.grey,
                      ),
                      Text(
                        'Đổi quà',
                        style: TextStyle(
                          color: controller.currentTab == 1 ? MyColor.PRIMARY_COLOR_BLUE : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: MaterialButton(
                minWidth: 40.w,
                onPressed: () {
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
                    color: controller.currentTab == 3 ? MyColor.PRIMARY_COLOR_BLUE : Colors.grey,
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40.w,
                  onPressed: () {
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
                        color: controller.currentTab == 4 ? MyColor.PRIMARY_COLOR_BLUE : Colors.grey,
                      ),
                      Text(
                        'Thông báo',
                        style: TextStyle(
                          color: controller.currentTab == 4 ? MyColor.PRIMARY_COLOR_BLUE : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40.w,
                  onPressed: () {
                    // controller.currentScreen = const SettingsPage();
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
                    controller.changeTabIndex(5);
                    controller.changeTabIndex(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: controller.currentTab == 5 ? MyColor.PRIMARY_COLOR_BLUE : Colors.grey,
                      ),
                      Text(
                        'Cài đặt',
                        style: TextStyle(
                          color: controller.currentTab == 5 ? MyColor.PRIMARY_COLOR_BLUE : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
