import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'authentication.dart';
import 'infor_user.dart';

class CoverWidget extends StatelessWidget {
  const CoverWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int number = 2 ;
    return SizedBox(
      height: 350.h,
      child: Stack(
        children: [
          Container(
            height: 300.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.r),
                  bottomLeft: Radius.circular(20.r)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(1, 2), // changes position of shadow
                ),
              ],
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
                    SizedBox(
                      height: 25.h,
                      width: Get.size.width / 1.5,
                      child: TextField(
                        maxLines: 1,
                        style: TextStyle(fontSize: 17.sp),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black54,
                            size: 20.spMin,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.r))),
                          fillColor:
                              Theme.of(context).inputDecorationTheme.fillColor,
                          contentPadding: EdgeInsets.zero,
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 15.sp),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.h),
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
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  width: Get.size.width,
                  height: 120.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset:
                            const Offset(3, 3), // changes position of shadow
                      ),
                    ],
                    image: const DecorationImage(
                      image:NetworkImage('http://icdn.dantri.com.vn/zoom/1200_630/2021/11/10/chuan-3-crop-crop-1636541129710.jpeg',
                      ),
                      fit: BoxFit.fill,
                    )
                  ),
                )
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


