import 'package:get/get.dart';
import 'package:smart_banking/screens/home/view/home_page.dart';
import 'package:smart_banking/screens/register/view/register_binding.dart';
import 'package:smart_banking/screens/register/view/register_page.dart';
import 'package:smart_banking/screens/service_manager/view/service_manager_page.dart';
import '../screens/dashboard/binding/dashboard_binding.dart';
import '../screens/dashboard/view/dashboard_page.dart';
import '../screens/home/binding/home_binding.dart';
import '../screens/service_manager/view/service_manager_binding.dart';
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

    GetPage(
        name: AppRouters.HOME,
        page: () => const HomePage(),
        binding: HomedBinding()),
  ];
}