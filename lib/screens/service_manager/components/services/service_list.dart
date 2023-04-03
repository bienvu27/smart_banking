import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../model/service_favorite_model.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({
    super.key,
    required this.list,
    required this.title,
  });

  final List<ServiceFavoriteModel> list;
  final String title;

  @override
  Widget build(BuildContext context) {
    final width = Get.size.width;
    return Container(
      margin: EdgeInsets.only(top: height_8),
      padding: EdgeInsets.only(top: height_8, left: width_8, right: width_8),
      width: width,
      color: clr_white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: fontSize_12, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: EdgeInsets.only(top: width_12),
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
                            width: width_28,
                            height: height_28,
                            color: PRIMARY_COLOR,
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            bottom: height_5,
                            child: Container(
                              width: width_20,
                              height: 0.1.h,
                              decoration: BoxDecoration(
                                boxShadow: [boxShadowIcon],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height_6,
                      ),
                      SizedBox(
                        width: width_64,
                        child: Text(
                          e.title ?? '',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: fontSize_12,
                            fontWeight: FontWeight.w600,
                          ),
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
