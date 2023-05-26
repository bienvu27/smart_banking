import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomeViewModel extends GetxController {
  bool isLogin = false;
  final PageController pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  bool end = false;

  autoScrollPageView(){
    Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (_currentPage == 2) {
        end = true;
      } else if (_currentPage == 0) {
        end = false;
      }

      if (end == false) {
        _currentPage++;
      } else {
        _currentPage--;
      }

      pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    });
    update();
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    SharedPreferences.getInstance().then((pref) async {
      isLogin = await pref.getString("username") != null;
      update();
    });
    await autoScrollPageView();
  }
}