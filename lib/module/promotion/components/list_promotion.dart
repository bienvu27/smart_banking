import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../res/my_color .dart';
import '../model/promotion_model.dart';

class ListPromotion extends StatelessWidget {
  const ListPromotion({
    super.key,
    required this.listPromotion,
  });

  final List<PromotionModel> listPromotion;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width,
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.h, bottom: 30.h),
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h,),
          Text(
            'Gợi ý quà tặng',
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          Column(
            children: listPromotion.map((e){
              return Container(
                margin: EdgeInsets.only(top: 10.h),
                padding: EdgeInsets.only(bottom: 10.h),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1.w, color: Colors.black26),
                  ),),
                child: Row(
                  children: [
                    Container(
                      width: 110.w,
                      height: 70.h,
                      margin: EdgeInsets.only(right: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color:
                              Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(
                                  1, 1), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: NetworkImage(
                                  e.image ?? ''),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      height: 70.h,
                      width: Get.size.width / 1.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment
                            .spaceEvenly,
                        children: [
                          Text(
                            e.title ?? '',
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 15.sp,
                                height: 1.3,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Ưu đãi đến: ${e.subTitle}',
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.black45,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5.w),
                                width: 35.w,
                                child: Stack(
                                  children: [
                                    Icon(
                                      Icons.circle_rounded,
                                      size: 20.spMin,
                                      color: Colors.redAccent,
                                    ),
                                    Positioned(
                                      left: 8.w,
                                      child: Icon(
                                        Icons.circle_rounded,
                                        size: 20.spMin,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Positioned(
                                      left: 16.w,
                                      child: Icon(
                                        Icons.circle_rounded,
                                        size: 20.spMin,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    e.point ?? '',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                        color:
                                        MyColor.PRIMARY_COLOR_BLUE),
                                  ),
                                  Text(
                                    'B-Point',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                        color:
                                        MyColor.PRIMARY_COLOR_BLUE),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20.spMin,
                                    color: Colors.black54,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    '${e.like}',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}