import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_banking/res/app_context_extention.dart';
import '../../../res/resources/assets.dart';
import '../../../res/strings/strings.dart';
import '../../../res/text_style/app_text_style.dart';
import '../../dashboard_view/view/dashboard_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const DashBoardPage())));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: context.resources.dimension.mediaQueryHeight,
        child: Scaffold(
          body: Stack(
            children: [
              Positioned(
                top: 0,
                child: Image.asset(
                  splash_bg_top,
                  width: 550.w,
                ),
              ),
              Positioned.fill(
                  bottom: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          logo_app,
                          width: 179,
                          height: 78,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "$CONNECT_SUCCESS".toUpperCase(),
                          style: AppTextStyle().TextStyle700Bold.copyWith(
                                fontSize: 24,
                                color: Color(0xFFF1555B),
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "$DEVELOPMENT_COMPANION".toUpperCase(),
                          style: AppTextStyle().TextStyle700Bold.copyWith(
                                fontSize: 24,
                                color: Color(0xFF005BAA),
                              ),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  splash_bg_bottom,
                  width: 750.w,
                ),
              ),
            ],
          ),
        ));
  }
}
