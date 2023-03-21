import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/button/button_component.dart';
import '../model/service_favorite_model.dart';

class ServiceFavorite extends StatelessWidget {
  const ServiceFavorite({
    super.key,
    required this.list,
  });

  final List<ServiceFavoriteModel> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dịch vụ yêu thích',
                style: TextStyle(
                    fontSize: 15.sp, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              Text(
                'Tuỳ chỉnh',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.redAccent),
              ),
            ],
          ),
          SizedBox(
            height: 250.h,
            child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: list.map((e) {
                  return SizedBox(
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.network(
                              e.image ?? '',
                              width: 40.w,
                              height: 40.h,
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
                        Text(
                          e.title ?? '',
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  );
                }).toList()),
          ),
          ButtonComponent(title: 'Xem tất cả các dịch vụ', callback: () {},)
        ],
      ),
    );
  }
}