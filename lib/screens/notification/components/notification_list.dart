import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/notification_model.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    super.key,
    required this.list, required this.visible,
  });

  final List<NotificationModel> list;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: list.map((e) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 10.w,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hôm qua, ${e.date}',
                      style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.verified_outlined,
                          size: 17.spMin,
                          color: Colors.black54,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '14:55',
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: visible,
                child: Container(
                  margin: EdgeInsets.only(top: 20.h),
                  width: MediaQuery.of(context).size.width,
                  height: 300.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          '${e.image}'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.h),
                padding: EdgeInsets.only(
                    top: 10.h, bottom: 10.h, right: 10.w, left: 10.w),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Colors.grey[100]),
                child: Text(
                  'MỞ THẺ 0 PHÍ - ƯU ĐÃI TRÀN VÍ CÙNG THẺ VRB \n \n'
                      'Dễ dang mở thẻ tín dụng VRD cùng ưu đãi miễn phí thường niên khi chi tiêu thẻ trong 30 ngày kể từ ngày phát hành \n'
                      '- Miễn phí thường niên thẻ thẻ Platinum khi chi tiêu 2 triệu đồng\n'
                      '- Miễn phí thường niên thẻ thẻ Platinum khi chi tiêu 2 triệu đồng\n'
                      '- Miễn phí thường niên thẻ thẻ Platinum khi chi tiêu 2 triệu đồng\n'
                      '- Miễn phí thường niên thẻ thẻ Platinum khi chi tiêu 2 triệu đồng\n'
                      '- Miễn phí thường niên thẻ thẻ Platinum khi chi tiêu 2 triệu đồng\n'
                      '- Miễn phí thường niên thẻ thẻ Platinum khi chi tiêu 2 triệu đồng\n'
                      '- Miễn phí thường niên thẻ thẻ Platinum khi chi tiêu 2 triệu đồng\n'
                  ,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp),
                ),
              )
            ],
          );
        }).toList(),
      ),
    );
  }
}