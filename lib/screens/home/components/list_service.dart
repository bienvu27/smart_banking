import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style.dart';
import '../model/list_service_model.dart';

class ListService extends StatelessWidget {
  const ListService({
    super.key,
    required this.listService,
  });

  final List<ListServiceModel> listService;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h),
      child: Column(
        children: listService.map((e) {
          return Container(
            margin: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
            padding: EdgeInsets.only(
                left: 15.w, right: 10.w, bottom: 10.h, top: 10.h),
            width: Get.size.width,
            decoration: BoxDecoration(
                color: button_color_home,
                borderRadius: BorderRadius.circular(15.r)),
            child: Stack(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      '${e.image}',
                      width: 25.w,
                      height: 25.h,
                      color: PRIMARY_COLOR,
                      fit: BoxFit.contain,
                    ),
                    Container(
                      width: Get.size.width / 1.5,
                      margin: EdgeInsets.only(
                        left: 15.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.title ?? '',
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: PRIMARY_COLOR,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            e.description ?? '',
                            maxLines: 3,
                            style: const TextStyle(height: 1.7),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                    top: 0.h,
                    right: 0.w,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 3.h, bottom: 3.h, left: 5.w, right: 3.w),
                      decoration: BoxDecoration(
                          color: clr_blue_customization_1,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('${e.numberService}',
                              style: const TextStyle(
                                  color: PRIMARY_COLOR,
                                  fontWeight: FontWeight.w500)),
                           SizedBox(width: 3.w,),
                           const Text(SERVICE,
                              style: TextStyle(
                                  color: PRIMARY_COLOR,
                                  fontWeight: FontWeight.w500)),
                          SizedBox(width: 3.w,),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 13.spMin,
                            color: PRIMARY_COLOR,
                          )
                        ],
                      ),
                    ))
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
