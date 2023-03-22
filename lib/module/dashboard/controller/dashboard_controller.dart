import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../home/view/home_page.dart';
import '../../notifications/notifications_page.dart';
import '../../promotion/promotion_page.dart';
import '../../qr_code/qr_code_page.dart';
import '../../settings/settings_page.dart';
import '../view/dashboard_page.dart';


class DashboardController extends GetxController {
  int currentTab = 0;
  final List<Widget> screens = [
    const DashBoardPage(),
    const PromotionPage(),
    const QRCode_Page(),
    const NotificationPage(),
    const SettingsPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  changeTabIndex(int index) {
    currentTab = index;
    update();
  }
}
