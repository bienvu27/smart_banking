import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_banking/router/app_pages.dart';
import 'package:smart_banking/router/app_routers.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return GetMaterialApp(
          initialRoute: AppRouters.DASHBOARD,
          getPages: AppPages.list,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
        );
      },
    );
  }
}

