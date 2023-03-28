import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style.dart';
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
      color: clr_white,
      margin: EdgeInsets.only(top: 10.h, bottom: 30.h),
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h,),
          Text(
            PROMOTION_1,
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: clr_black),
          ),
          Column(
            children: listPromotion.map((e){
              return Container(
                margin: EdgeInsets.only(top: 10.h),
                padding: EdgeInsets.only(bottom: 10.h),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 1.w, color: clr_black26),
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
                      width: Get.size.width / 1.7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween,
                        children: [
                          Text(
                            e.title ?? '',
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 15.sp,
                                height: 1.3,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(height: 5.h,),
                          Text(
                            '$TITLE_32 ${e.subTitle}',
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: clr_black54,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5.w),
                                width: 35.w,
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/flower_rounded.svg',
                                      width: 15.w,
                                      height: 15.h,
                                      color: clr_flower_1,
                                      fit: BoxFit.contain,
                                    ),
                                    Positioned(
                                      left: 8.w,
                                      child: SvgPicture.asset(
                                        'assets/svg/flower_rounded.svg',
                                        width: 15.w,
                                        height: 15.h,
                                        color: clr_yellow,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Positioned(
                                      left: 16.w,
                                      child: SvgPicture.asset(
                                        'assets/svg/flower_rounded.svg',
                                        width: 15.w,
                                        height: 15.h,
                                        color: clr_blue,
                                        fit: BoxFit.contain,
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
                                        PRIMARY_COLOR),
                                  ),
                                  Text(
                                    'B-Point',
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                        color:
                                        PRIMARY_COLOR),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    size: 20.spMin,
                                    color: clr_black54,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    '${e.like}',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: clr_black54,
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