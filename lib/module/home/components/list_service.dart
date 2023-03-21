import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
            width: Get.size.width,
            height: 90.h,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15.r)),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.network(
                        e.image ?? '',
                        width: 35.w,
                        height: 35.h,
                      ),
                      Container(
                        width: Get.size.width / 1.5,
                        margin: EdgeInsets.only(left: 15.w, top: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.title ?? '',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              e.description ?? '',
                              maxLines: 3,
                              style: const TextStyle(height: 1.5),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      top: 10.h,
                      right: 10.w,
                      child: Container(
                        width: 80.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('${e.numberService}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                            const Text('dịch vụ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 13.spMin,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
