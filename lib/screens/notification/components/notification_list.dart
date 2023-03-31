import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/colors.dart';
import '../model/notification_model.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    super.key,
    required this.list,
    required this.visibleImage,
    required this.visibleIcon,
  });

  final List<NotificationModel> list;
  final bool visibleImage, visibleIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: list.map((e) {
          return Container(
            padding: EdgeInsets.only(bottom: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    left: 10.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hôm qua, ${e.date}',
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w500),
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
                  visible: visibleImage,
                  child: Container(
                    margin: EdgeInsets.only(top: 20.h),
                    width: MediaQuery.of(context).size.width,
                    height: 300.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('${e.image}'),
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
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: e.description!.map((data) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                text: TextSpan(children: [
                                  WidgetSpan(
                                    child: Visibility(
                                      visible: visibleIcon,
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              top: 3.h, right: 5.w),
                                          child: Image.network(
                                            data.image ?? '',
                                            width: 15.spMax,
                                            height: 15.spMax,
                                          )),
                                    ),
                                  ),
                                  TextSpan(
                                    text: data.description,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        height: 1.5,
                                        color: clr_black),
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ))
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
