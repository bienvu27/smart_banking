import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/first_tab.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab2/seconds_tab.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab3/last_tab.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              CHOOSE_PEOPLE,
              style: TextStyle(
                  color: clr_black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
            backgroundColor: clr_white,
            leading: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: clr_black,
                  size: 20.spMax,
                )),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70.h),
              child: Container(
                margin: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                  top: 15.h,
                ),
                height: 60.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15.r,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: clr_e1e9ef.withOpacity(0.9),
                          offset: const Offset(0.0, 1.0), //(x,y)
                          blurRadius: 1.0,
                          spreadRadius: 5),
                    ],
                    gradient: const LinearGradient(colors: [
                      clr_button_1,
                      clr_button_2,
                      clr_button_2,
                      clr_button_2,
                      clr_button_4,
                      clr_button_4,
                    ])),
                child: TabBar(
                  padding: const EdgeInsets.all(5),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15.r,
                    ),
                    color: clr_66cacef,
                  ),
                  labelColor: clr_white,
                  unselectedLabelColor: clr_white,
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: Text(
                          TAB_1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.2.h),
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: Text(
                          TAB_2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.2.h),
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: 80.w,
                        child: Text(
                          TAB_3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            height: 1.2.h
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )),
        body:  const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            FirstTab(),
            SecondsTab(),
            LastTab()
          ],
        ),
      ),
    );
  }
}
