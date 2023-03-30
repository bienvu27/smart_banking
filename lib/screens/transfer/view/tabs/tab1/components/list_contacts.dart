import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/style.dart';
import '../../../../models/list_contacts_model.dart';

class ListContacts extends StatelessWidget {
  ListContacts({
    super.key,
    required this.list, this.icon
  });

  final List<ListContactsModel> list;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      color: clr_white,
      child: ListView(
        children: list.map((e) {
          return Container(
            margin: EdgeInsets.only(top: 20.h,),
            color: clr_white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: clr_f6f5f7,
                      radius: 20.r,
                      child: Image.asset(
                        e.image ?? '',
                        width: 30.w,
                        height: 30.h,
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.name?.toUpperCase() ?? ''.toUpperCase(),
                          style: TextStyle(
                              color: clr_black,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp),
                        ),
                        SizedBox(height: 5.h,),
                        Text(
                          e.numberAccount?.toUpperCase() ?? ''.toUpperCase(),
                          style: TextStyle(
                              color: clr_black,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.sp),
                        ),
                        SizedBox(height: 5.h,),
                        Text(
                          e.nameBank?.toUpperCase() ?? ''.toUpperCase(),
                          style: TextStyle(
                              color: clr_black87,
                              fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(icon, color: clr_black26, size: 20.spMax,)
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}