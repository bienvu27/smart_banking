import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/style.dart';
import 'authentication.dart';
import 'infor_user.dart';

class CoverWidget extends StatelessWidget {
  const CoverWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int number = 1 ;
    final width  = MediaQuery.of(context).size.width;
    final height  = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height/1.36,
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
                      height: 50.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      height: 25.h,
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
                          hintText: 'Tìm kiếm',
                          hintStyle: TextStyle(fontSize: 15.sp, color: clr_white54),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50.w,
                        height: 50.w,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black12,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30.spMin,
                              ),
                            ),
                            Positioned(
                                right: 12,
                                bottom: -2,
                                child: Container(
                                  width: 15.w,
                                  height: 15.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(Icons.menu, size: 12.spMin),
                                ))
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Chào buổi sáng!',
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          ),
                          Text(
                            'Bien Vu',
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                        ],
                      )
                    ],
                  ),
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


