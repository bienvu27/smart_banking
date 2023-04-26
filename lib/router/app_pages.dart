import 'package:get/get.dart';
import 'package:smart_banking/screens/home/view/home_page.dart';
import 'package:smart_banking/screens/register/binding/register_binding.dart';
import 'package:smart_banking/screens/register/view/register_page.dart';
import 'package:smart_banking/screens/service_manager/view/service_manager_page.dart';
import 'package:smart_banking/screens/web_view/binding/webview_binding.dart';
import 'package:smart_banking/screens/web_view/view/web_view_page.dart';
import '../screens/add_contacts/binding/add_contacts_binding.dart';
import '../screens/add_contacts/view/add_contacts_page.dart';
import '../screens/all_contacts/binding/all_contacts_binding.dart';
import '../screens/all_contacts/view/all_contacts_page.dart';
import '../screens/card_mobile/binding/card_mobile_binding.dart';
import '../screens/card_mobile/view/card_mobile_page.dart';
import '../screens/card_service/binding/card_service_binding.dart';
import '../screens/card_service/view/card_service_page.dart';
import '../screens/contact_bank/binding/contact_bank_binding.dart';
import '../screens/contact_bank/view/contact_bank_page.dart';
import '../screens/contacts_manager/binding/contacts_manager_binding.dart';
import '../screens/contacts_manager/view/contacts_manager.dart';
import '../screens/dashboard/binding/dashboard_binding.dart';
import '../screens/dashboard/view/dashboard_page.dart';
import '../screens/history_transfer/binding/history_transfer_binding.dart';
import '../screens/history_transfer/view/history_transfer_page.dart';
import '../screens/home/binding/home_binding.dart';
import '../screens/questions/binding/questions_binding.dart';
import '../screens/questions/view/question_page.dart';
import '../screens/service_manager/binding/service_manager_binding.dart';
import '../screens/splash_screen/binding/splash_screen_binding.dart';
import '../screens/splash_screen/view/splash_screen.dart';
import '../screens/transaction_confirmation/binding/transaction_confirmation_binding.dart';
import '../screens/transaction_confirmation/view/transaction_confirmation_page.dart';
import '../screens/transaction_infor/binding/transaction_infor_binding.dart';
import '../screens/transaction_infor/view/transaction_infor_page.dart';
import '../screens/transaction_limit/binding/tansaction_limit_binding.dart';
import '../screens/transaction_limit/view/transaction_limit_page.dart';
import '../screens/transfer/binding/transfer_binding.dart';
import '../screens/transfer/view/transfer_page.dart';
import '../screens/transfer_success/binding/transfer_success_binding.dart';
import '../screens/transfer_success/view/transfer_success.dart';
import '../screens/user/binding/user_bindding.dart';
import '../screens/user/view/user_page.dart';
import '../screens/user_manual/binding/user_manual_binding.dart';
import '../screens/user_manual/view/user_manual_page.dart';
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
        page: () => HomePage(),
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
        page: () => TransactionInforPage(),
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
        binding: TransferSuccessBinding()),

    GetPage(
        name: AppRouters.USER_PAGE,
        page: () => UserPage(),
        binding: UserBinding()),

    GetPage(
        name: AppRouters.HISTORY_TRANSFER,
        page: () => HistoryTransferPage(),
        binding: HistoryTransferBinding()),

    GetPage(
        name: AppRouters.CARD_MOBILE,
        page: () => CardMobilePage(),
        binding: CardMobileBinding()),

    GetPage(
        name: AppRouters.ALL_CONTACTS,
        page: () => AllContactsPage(),
        binding: AllContactsBinding()),

    GetPage(
        name: AppRouters.ADD_CONTACTS,
        page: () => AddContactsPage(),
        binding: AddContactsBinding()),

    GetPage(
        name: AppRouters.CARD_SERVICE,
        page: () => CardServicePage(),
        binding: CardServiceBinding()),

    GetPage(
        name: AppRouters.WEB_VIEW,
        page: () => WebViewPage(),
        binding: WebViewBinding()),

    GetPage(
        name: AppRouters.USER_MANUAL,
        page: () => UserManualPage(),
        binding: UserManualBinding()),

    GetPage(
        name: AppRouters.CONTACT_BANK,
        page: () => ContactBankPage(),
        binding: ContactBankBinding()),

    GetPage(
        name: AppRouters.QUESTIONS,
        page: () => QuestionsPage(),
        binding: QuestionsBinding()),

    GetPage(
        name: AppRouters.TRANSACTION_LIMIT,
        page: () => TransactionLimitPage(),
        binding: TransactionLimitBinding()),

  ];
}