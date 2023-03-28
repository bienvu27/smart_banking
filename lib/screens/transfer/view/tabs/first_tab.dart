import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/strings.dart';
import '../../../../core/style.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(150.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                        labelText: TITLE_33,
                        suffixIcon: Icon(
                          Icons.account_box_outlined,
                          size: 20.spMax,
                          color: clr_black54,
                        ),
                        suffixIconColor: clr_black54,
                        labelStyle: TextStyle(
                            fontSize: 16.sp,
                            color: clr_black54,
                            fontWeight: FontWeight.w500),
                        disabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: clr_black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: PRIMARY_COLOR),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: clr_f5f5f5,
                    height: 50.h,
                    margin:  EdgeInsets.only(top: 20.h),
                    padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          TITLE_34,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: clr_a6a8a9,
                          ),
                        ),
                        Text(
                          TITLE_35,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: PRIMARY_COLOR,
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 20.w, right: 20.w, top: 15.h, bottom: 10.h),
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        25.r,
                      ),
                    ),
                    child: TabBar(
                      padding: const EdgeInsets.all(5),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25.r,
                        ),
                        color: clr_white,
                      ),
                      labelColor: PRIMARY_COLOR,
                      unselectedLabelColor: clr_black,
                      tabs: [
                        Tab(
                          child: Text(
                            PROMOTIN_1,
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            VOLATILITY,
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            NOTIFI,
                            style: TextStyle(
                                fontSize: 13.sp, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        body: const Center(child: Text('Tab1')),
      ),
    );
  }
}
