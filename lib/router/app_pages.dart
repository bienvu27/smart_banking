import 'package:get/get.dart';
import 'package:smart_banking/screens/home/view/home_page.dart';
import 'package:smart_banking/screens/register/binding/register_binding.dart';
import 'package:smart_banking/screens/register/view/register_page.dart';
import 'package:smart_banking/screens/service_manager/view/service_manager_page.dart';
import '../screens/contacts_manager/binding/contacts_manager_binding.dart';
import '../screens/contacts_manager/view/contacts_manager.dart';
import '../screens/dashboard/binding/dashboard_binding.dart';
import '../screens/dashboard/view/dashboard_page.dart';
import '../screens/home/binding/home_binding.dart';
import '../screens/service_manager/binding/service_manager_binding.dart';
import '../screens/splash_screen/binding/splash_screen_binding.dart';
import '../screens/splash_screen/view/splash_screen.dart';
import '../screens/transaction_confirmation/binding/transaction_confirmation_binding.dart';
import '../screens/transaction_confirmation/view/transaction_confirmation_page.dart';
import '../screens/transaction_infor/binding/transaction_infor_binding.dart';
import '../screens/transaction_infor/view/transaction_infor_page.dart';
import '../screens/transfer/binding/transfer_binding.dart';
import '../screens/transfer/view/transfer_page.dart';
import '../screens/transfer_success/binding/transfer_success_binding.dart';
import '../screens/transfer_success/view/transfer_success.dart';
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

    GetPage(
        name: AppRouters.TRANSFER,
        page: () => const TransferPage(),
        binding: TransferBinding()),

    GetPage(
        name: AppRouters.CONTACTS_MANAGER,
        page: () => const ContactsManagerPage(),
        binding: ContactsManagerBinding()),

    GetPage(
        name: AppRouters.TRANSACTION_INFOR,
        page: () => const TransactionInforPage(),
        binding: TransactionInforBinding()),

    GetPage(
        name: AppRouters.TRANSACTION_CONFIRM,
        page: () => const TransactionConfirmationPage(),
        binding: TransactionConfirmationBinding()),

    GetPage(
        name: AppRouters.SPLASH_SCREEN,
        page: () => SplashScreen(),
        binding: SplashScreenBinding()),

    GetPage(
        name: AppRouters.TRANSFER_SUCCESS,
        page: () => TransferSuccessPage(),
        binding: TransferSuccessBinding())

  ];
}