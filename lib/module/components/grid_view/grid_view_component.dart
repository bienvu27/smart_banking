import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../res/my_color .dart';
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
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 18.sp, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              Text(
                subTitle ?? '',
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: MyColor.PRIMARY_COLOR_BLUE),
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
                  return InkWell(
                    onTap: (){
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                            title: 'Quý khách cần kích hoạt ứng dụng trước để sử dụng chức năng này.',
                            cancel: 'Huỷ bỏ',
                            submit: 'Đăng nhập',
                            clickCallback: () {
                            },
                          ));
                    },
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
        ],
      ),
    );
  }
}