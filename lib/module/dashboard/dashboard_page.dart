import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../home/view/home_page.dart';
import '../notifications/notifications_page.dart';
import '../promotion/promotion_page.dart';
import '../qr_code/qr_code_page.dart';
import '../settings/settings_page.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
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

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        floatingActionButton: Material(
          color: Colors.purple,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.r)),
          shadowColor: Colors.purple,
          child: SizedBox(
            height: 40.h,
            width: 45.w,
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 3.w, color: Colors.white),
                  borderRadius: BorderRadius.circular(100.r)),
              child: const Icon(Icons.qr_code_scanner_sharp),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: SizedBox(
            height: 60.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40.w,
                      onPressed: () {
                        setState(() {
                          currentScreen = const HomePage();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_filled,
                            color: currentTab == 0 ? Colors.red : Colors.grey,
                          ),
                          Text(
                            'Trang chủ',
                            style: TextStyle(
                              color: currentTab == 0 ? Colors.red : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const PromotionPage();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.blur_circular,
                            color: currentTab == 1 ? Colors.red : Colors.grey,
                          ),
                          Text(
                            'Đổi quà',
                            style: TextStyle(
                              color: currentTab == 1 ? Colors.red : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        // currentScreen = const QRCode_Page();
                        // currentTab = 3;
                      });
                    },
                    child: Text(
                      'Quét QR',
                      style: TextStyle(
                        color: currentTab == 3 ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const NotificationPage();
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications,
                            color: currentTab == 4 ? Colors.red : Colors.grey,
                          ),
                          Text(
                            'Thông báo',
                            style: TextStyle(
                              color: currentTab == 4 ? Colors.red : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const SettingsPage();
                          currentTab = 5;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings,
                            color: currentTab == 5 ? Colors.red : Colors.grey,
                          ),
                          Text(
                            'Cài đặt',
                            style: TextStyle(
                              color: currentTab == 5 ? Colors.red : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
