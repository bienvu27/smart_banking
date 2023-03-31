import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/style/colors.dart';
import '../../model/service_favorite_model.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({
    super.key,
    required this.list, required this.title,
  });

  final List<ServiceFavoriteModel> list;
  final String title ;

  @override
  Widget build(BuildContext context) {
    final width = Get.size.width;
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.only(top: 10, left: 10.w, right: 10.w),
      width: width,
      color: clr_white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: list.map((e) {
                  return Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            '${e.image}',
                            width: 35.w,
                            height: 35.h,
                            color: PRIMARY_COLOR,
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            bottom: 5.h,
                            child: Container(
                              width: 30.w,
                              height: 0.1.h,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey.withOpacity(0.9),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 5), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        width: 65.w,
                        child: Text(
                          e.title ?? '',
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }
}