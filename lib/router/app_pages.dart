import 'package:get/get.dart';
import '../view/dashboard/dashboard_binding.dart';
import '../view/dashboard/dashboard_page.dart';
import 'app_routers.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRouters.DASHBOARD,
        page: () => const DashBoardPage(),
        binding: DashBoardBinding())
  ];
}