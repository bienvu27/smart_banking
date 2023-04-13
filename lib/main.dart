import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_banking/router/app_pages.dart';
import 'package:smart_banking/router/app_routers.dart';
import 'package:get/get.dart';

import 'core/resources/constant.dart';
import 'core/widgets/root_layout.dart';

void main()  {
  // SharedPreferences pref = await SharedPreferences.getInstance();
  // isLogin = await pref.getString("username") != null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(750 , 1334),
      builder: (context, child){
        return GetMaterialApp(
          initialRoute: AppRouters.DASHBOARD,
          getPages: AppPages.list,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          builder: (context, child){
            return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: RootLayout(child: child,));
          },
        );
      },
    );
  }
}

