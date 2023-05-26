import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import 'package:smart_banking/utils/utils.dart';
import '../../../res/strings/strings.dart';
import '../../../res/colors/app_colors.dart';
import '../../../res/text_style/app_text_style.dart';
import '../../components/dialog/custom_dialog.dart';
import '../../home_view/view/home_page.dart';
import '../../notification/notifications_page.dart';
import '../../promotion/promotion_page.dart';
import '../../settings/settings_page.dart';
import '../../../view_model/dashboard_view_model/dashboard_view_model.dart';
import 'icons_dashboard.dart';

// ignore: must_be_immutable
class DashboardBottomNavigatorBar extends StatelessWidget {
  DashboardViewModel controller;

  DashboardBottomNavigatorBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6,
      child: SizedBox(
        height: context.resources.dimension.heightBottomAppBar,
        width: context.resources.dimension.mediaQueryWidth,
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
                    child: IconsDashBoard(
                      onTap: () {
                        controller.currentScreen = const HomePage();
                        controller.changeTabIndex(0);
                      },
                      icon: Icons.home,
                      title: HOME,
                      c: controller,
                      number: 0,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: IconsDashBoard(
                      onTap: () {
                        controller.currentScreen = const PromotionPage();
                        controller.changeTabIndex(1);
                      },
                      icon: Icons.blur_circular,
                      title: REDEEM_GIFTS,
                      c: controller,
                      number: 1,
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
                    margin: EdgeInsets.only(
                      top: context.resources.dimension.heightQRHome,
                    ),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) => CustomDialog(
                                  title: TITLE_31,
                                  cancel: CANCEL2,
                                  submit: LOGIN,
                                  clickCallback: () {},
                                ));
                        controller.changeTabIndex(0);
                      },
                      child: Text(
                        QR_CODE,
                        style: AppTextStyle().boldVerySmallTextStyle.copyWith(
                              color: controller.currentTab == 3
                                  ? AppColors().colorPrimary
                                  : AppColors().colorUnActiveButton,
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
                  Flexible(
                    flex: 1,
                    child: IconsDashBoard(
                      onTap: () {
                        controller.currentScreen = const NotificationPage();
                        controller.changeTabIndex(4);
                      },
                      icon: Icons.notifications,
                      title: NOTIFICATION,
                      c: controller,
                      number: 4,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: IconsDashBoard(
                      onTap: () async {
                        SharedPreferences pref =
                            await SharedPreferences.getInstance();
                        bool isLogin = await pref.getString("username") != null;
                        if (isLogin) {
                          controller.currentScreen = const SettingsPage();
                          controller.changeTabIndex(5);
                        } else {
                          Utils.showAuthenticationDialog(context);
                        }
                      },
                      icon: Icons.settings,
                      title: SETTING,
                      c: controller,
                      number: 5,
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
