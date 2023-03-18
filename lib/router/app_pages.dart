import 'package:get/get.dart';
import '../module/dashboard/dashboard_binding.dart';
import '../module/dashboard/dashboard_page.dart';
import 'app_routers.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRouters.DASHBOARD,
        page: () => const DashBoardPage(),
        binding: DashBoardBinding())
  ];
}