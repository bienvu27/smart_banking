import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/common/utils.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/dialog/custom_dialog.dart';
import '../../home/controller/home_controller.dart';
import '../../service_manager/model/service_favorite_model.dart';

class GridViewComponent extends StatelessWidget {
  GridViewComponent({
    super.key,
    required this.list,
    required this.title,
    this.subTitle,
    this.callback,
    this.onTap
  });

  final List<ServiceFavoriteModel> list;
  final String title;
  String? subTitle;
  VoidCallback? callback;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: width_10,
        right: width_10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: fontSize_11,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'open_sans',
                  color: clr_black,
                ),
              ),
              InkWell(
                onTap: () => callback!(),
                child: Text(
                  subTitle ?? '',
                  style: TextStyle(
                    fontSize: fontSize_11,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'open_sans',
                    color: PRIMARY_COLOR,
                  ),
                ),
              ),
            ],
          ),
          GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: list.map((e) {
                return InkWell(
                  onTap: () => onTap!() ,
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
                      Flexible(
                        child: Text(
                          e.title ?? '',
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: fontSize_10,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }).toList()),
        ],
      ),
    );
  }
}
