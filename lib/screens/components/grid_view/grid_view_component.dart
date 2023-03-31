import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../components/dialog/custom_dialog.dart';
import '../../service_manager/model/service_favorite_model.dart';

class GridViewComponent extends StatelessWidget {
  GridViewComponent({
    super.key,
    required this.list, required this.title, this.subTitle
  });

  final List<ServiceFavoriteModel> list;
  final String title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 5.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 17.sp, fontWeight: FontWeight.w600, color: clr_black),
              ),
              Text(
                subTitle ?? '',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: PRIMARY_COLOR),
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
                  onTap: (){
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => CustomDialog(
                          title: TITLE_31,
                          cancel: CANCEL2,
                          submit: LOGIN,
                          clickCallback: () {
                          },
                        ));
                  },
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            '${e.image}',
                            width: 35.w,
                            height: 35.h,
                            color: PRIMARY_COLOR,
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
        ],
      ),
    );
  }
}