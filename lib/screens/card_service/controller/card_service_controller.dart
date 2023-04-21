import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardServiceController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  final PageController cardController = PageController(initialPage: 0);
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

  void nextPage(){
    cardController.animateToPage(cardController.page!.toInt() - 1,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn
    );

  }

  void previousPage(){
    cardController.animateToPage(cardController.page!.toInt() +1,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn
    );

  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await autoScrollPageView();
  }
}