import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import 'package:smart_banking/utils/utils.dart';
import '../../../res/resources/assets.dart';
import '../../../res/strings/strings.dart';
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
    return Container(
      height: context.resources.dimension.heightBottomAppBar,
      width: context.resources.dimension.mediaQueryWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            children: [
              Flexible(
                flex: 1,
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
                        icon: home_icon,
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
                        icon: home_gifts,
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
                    Flexible(
                      flex: 1,
                      child: IconsDashBoard(
                        onTap: () {
                          controller.currentScreen = const NotificationPage();
                          controller.changeTabIndex(4);
                        },
                        icon: home_notification,
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
                          bool isLogin =
                              await pref.getString("username") != null;
                          if (isLogin) {
                            controller.currentScreen = const SettingsPage();
                            controller.changeTabIndex(5);
                          } else {
                            Utils.showAuthenticationDialog(context);
                          }
                        },
                        icon: home_setting,
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
      ),
    );
  }
}
