import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../model/service_favorite_model.dart';

class ServiceList extends StatelessWidget {
   ServiceList({
    super.key,
    required this.list,
    required this.title,
    this.onTap,
  });

  final List<ServiceFavoriteModel> list;
  final String title;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    final width = Get.size.width;
    return Container(
      margin: EdgeInsets.only(top: height_8),
      padding: EdgeInsets.only(
        top: height_8,
        left: width_8,
        right: width_8,
      ),
      width: width,
      color: clr_white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: fontSize_12,
              fontWeight: FontWeight.w600,
            ),
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
                  return InkWell(
                    onTap: ()=> onTap!(e),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              '${e.image}',
                              width: width_40,
                              height: height_40,
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
                        Text(
                          e.title ?? '',
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: fontSize_10,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }
}
