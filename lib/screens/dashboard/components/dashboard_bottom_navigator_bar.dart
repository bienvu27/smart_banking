import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_banking/core/common/utils.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';

import '../../../core/style/size.dart';
import '../../components/dialog/custom_dialog.dart';
import '../../home/view/home_page.dart';
import '../../notification/notifications_page.dart';
import '../../promotion/promotion_page.dart';
import '../../settings/settings_page.dart';
import '../controller/dashboard_controller.dart';

class DashboardBottomNavigatorBar extends StatelessWidget {

  DashboardController controller;

   DashboardBottomNavigatorBar({
    super.key,
     required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6,
      child: SizedBox(
        height: height_40,
        width: Get.size.width,
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
                    child: InkWell(
                      onTap: () {
                        controller.currentScreen = const HomePage();
                        controller.changeTabIndex(0);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: fontSize_20,
                            color: controller.currentTab == 0 ? PRIMARY_COLOR : clr_unactive_button,
                          ),
                          Text(
                            HOME,
                            style: TextStyle(
                              fontSize: fontSize_9,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w600,
                              color: controller.currentTab == 0 ? PRIMARY_COLOR : clr_unactive_button,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        controller.currentScreen = const PromotionPage();
                        controller.changeTabIndex(1);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.blur_circular,
                            size: fontSize_20,

                            color: controller.currentTab == 1 ? PRIMARY_COLOR : clr_unactive_button,
                          ),
                          Text(
                            REDEEM_GIFTS,
                            style: TextStyle(
                              fontSize: fontSize_9,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w600,
                              color: controller.currentTab == 1 ? PRIMARY_COLOR : clr_unactive_button,
                            ),
                          )
                        ],
                      ),
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
                    margin: EdgeInsets.only(top: height_16),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) => CustomDialog(
                              title: TITLE_31,
                              cancel: CANCEL2,
                              submit: LOGIN,
                              clickCallback: () {
                              },
                            ));
                        controller.changeTabIndex(0);
                      },
                      child: Text(
                        QR_CODE,
                        style: TextStyle(
                          fontSize: fontSize_9,
                          fontFamily: 'open_sans',
                          fontWeight: FontWeight.w600,
                          color: controller.currentTab == 3 ? PRIMARY_COLOR : clr_unactive_button,
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
                  InkWell(
                    onTap: () {
                      controller.currentScreen = const NotificationPage();
                      controller.changeTabIndex(4);

                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications,
                          size: fontSize_20,
                          color: controller.currentTab == 4 ? PRIMARY_COLOR : clr_unactive_button,
                        ),
                        Text(
                          NOTIFICATION,
                          style: TextStyle(
                            fontSize: fontSize_9,
                            fontFamily: 'open_sans',
                            fontWeight: FontWeight.w600,
                            color: controller.currentTab == 4 ? PRIMARY_COLOR : clr_unactive_button,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      SharedPreferences pref = await SharedPreferences.getInstance();
                      bool isLogin = await pref.getString("username") != null;
                      if(isLogin) {
                        controller.currentScreen = const SettingsPage();
                        controller.changeTabIndex(5);
                      } else {
                        Utils.showAuthenticationDialog(context);
                      }
                      // controller.changeTabIndex(0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          size: fontSize_20,
                          color: controller.currentTab == 5 ? PRIMARY_COLOR : clr_unactive_button,
                        ),
                        Text(
                          SETTING,
                          style: TextStyle(
                            fontSize: fontSize_9,
                            fontFamily: 'open_sans',
                            fontWeight: FontWeight.w600,
                            color: controller.currentTab == 5 ? PRIMARY_COLOR : clr_unactive_button,
                          ),
                        )
                      ],
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
