import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/style.dart';
import 'authentication.dart';
import 'infor_user.dart';

class CoverWidget extends StatelessWidget {
  const CoverWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int number = 2 ;
    final width  = MediaQuery.of(context).size.width;
    final height  = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height/1.34,
      child: Stack(
        children: [
          Container(
            height: height/1.5,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://www.bidv.com.vn/wps/wcm/connect/d7a1fd33-8001-4db2-a7b6-7a36a6511745/Coming+Soon+resize+5kt_380+x+213.jpg?MOD=AJPERES&CACHEID=ROOTWORKSPACE-d7a1fd33-8001-4db2-a7b6-7a36a6511745-nQJoNWe'),
                    fit: BoxFit.fill
                )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 30.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/vrbank.png',
                      width: 100.w,
                      height: 50.w,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      height: 30.w,
                      width: Get.size.width / 1.6,
                      child: TextField(
                        maxLines: 1,
                        style: TextStyle(fontSize: 17.sp),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: clr_white54,
                            size: 26.spMin,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.r))),
                          fillColor: clr_black12,
                          contentPadding: EdgeInsets.zero,
                          hintText: SEARCH,
                          hintStyle: TextStyle(fontSize: 15.sp, color: clr_white54),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: clr_white60,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 20.spMax,
                          ),
                        ),
                        Positioned(
                            right: 0.w,
                            bottom: 0.h,
                            child: Container(
                              width: 12.w,
                              height: 12.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(color: clr_black12),
                                  color: clr_white,
                                  shape: BoxShape.circle),
                              child: Icon(Icons.menu, size: 10.spMax),
                            ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            GOOD_MORNING,
                            style: TextStyle(
                                // fontFamily: 'myriad-pro-bold-condensed',
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: clr_white60),
                          ),
                          Text(
                            'VU XUAN BIEN'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: clr_white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          if(number == 1)...[
            const Authentication(),
          ]else ...[
            const InforUser(),
          ]
        ],
      ),
    );
  }
}


