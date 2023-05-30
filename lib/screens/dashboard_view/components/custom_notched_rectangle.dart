// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:flutter/material.dart';
//
// class TestDashboard extends StatefulWidget {
//   const TestDashboard({Key? key}) : super(key: key);
//
//   @override
//   State<TestDashboard> createState() => _TestDashboardState();
// }
//
// class _TestDashboardState extends State<TestDashboard> {
//   @override
//   Widget build(BuildContext context) {
//     List<IconData> iconList = [ //list of icons that required by animated navigation bar.
//       Icons.abc_sharp,
//       Icons.access_time,
//       Icons.holiday_village,
//       Icons.account_tree_rounded
//     ];
//     int _bottomNavIndex = 0;
//     return AnimatedBottomNavigationBar(
//         icons: iconList,
//         activeIndex: _bottomNavIndex,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.smoothEdge,
//         leftCornerRadius: 30,
//         rightCornerRadius: 30,
//         onTap: (index) => setState(() => _bottomNavIndex = index),
//     );
//   }
// }
