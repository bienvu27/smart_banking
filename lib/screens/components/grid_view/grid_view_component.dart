import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/dialog/custom_dialog.dart';
import '../../service_manager/model/service_favorite_model.dart';

class GridViewComponent extends StatelessWidget {
  GridViewComponent({super.key, required this.list, required this.title, this.subTitle});

  final List<ServiceFavoriteModel> list;
  final String title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width_10, right: width_10, bottom: height_4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: fontSize_12, fontWeight: FontWeight.w600, color: clr_black),
              ),
              Text(
                subTitle ?? '',
                style: TextStyle(
                  fontSize: fontSize_12,
                  fontWeight: FontWeight.w600,
                  color: PRIMARY_COLOR,
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
                  onTap: () {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => CustomDialog(
                              title: TITLE_31,
                              cancel: CANCEL2,
                              submit: LOGIN,
                              clickCallback: () {},
                            ));
                  },
                  child: Column(
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
                  ),
                );
              }).toList()),
        ],
      ),
    );
  }
}
