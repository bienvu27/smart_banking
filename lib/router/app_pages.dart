import 'package:get/get.dart';
import 'package:smart_banking/module/register/view/register_binding.dart';
import 'package:smart_banking/module/register/view/register_page.dart';
import 'package:smart_banking/module/service_manager/view/service_manager_page.dart';
import '../module/dashboard/dashboard_binding.dart';
import '../module/dashboard/dashboard_page.dart';
import '../module/service_manager/view/service_manager_binding.dart';
import 'app_routers.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRouters.DASHBOARD,
        page: () => const DashBoardPage(),
        binding: DashBoardBinding()),

    GetPage(
        name: AppRouters.REGISTER,
        page: () => const RegisterPage(),
        binding: RegisterBinding()),

    GetPage(
        name: AppRouters.SERVICE_MANAGER,
        page: () => const ServiceManager(),
        binding: ServiceManagerBinding()),

  ];
}