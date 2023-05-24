import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/home/controller/home_controller.dart';
import '../../screens/home/view/home_page.dart';
import '../../screens/notification/notifications_page.dart';
import '../../screens/promotion/promotion_page.dart';
import '../../screens/qr_code/qr_code_page.dart';
import '../../screens/settings/settings_page.dart';
import '../../screens/dashboard_view/view/dashboard_page.dart';


class DashboardViewModel extends GetxController {
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
  @override
  void onInit() {
    super.onInit();
    currentTab = 0;
    currentScreen = const HomePage();
    Get.put(HomeController());
    update();;
  }

}
