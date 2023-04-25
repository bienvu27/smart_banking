import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/app_bar/app_bar_component.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../core/style/colors.dart';
import '../controller/web_view_controller.dart';

class WebViewPage extends StatelessWidget {
  WebViewPage({Key? key}) : super(key: key);
  String title = Get.arguments[0];
  String linkUrl = Get.arguments[1];
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: title,
        callback: () => Get.back(),
      ),
        body: GetBuilder<WebViewPageController>(
        init: WebViewPageController(),
        builder: (controller){
          return WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: linkUrl,
          );
        },
      )
    );
  }
}
