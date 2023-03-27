import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../components/button/button_component.dart';
import '../../components/dialog/custom_dialog.dart';
import '../../service_manager/model/service_favorite_model.dart';

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
                SERVICES_FAVORITE,
                style: TextStyle(
                    fontSize: 17.sp, fontWeight: FontWeight.w600, color: clr_black),
              ),
              Text(
                CUSTOMIZATION,
                style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                    color: clr_blue_customization),
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
                            SvgPicture.asset(
                              '${e.image}',
                              width: 35.w,
                              height: 35.h,
                              color: clr_blue_customization,
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
                                      Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(1, 5), // changes position of shadow
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
                        SizedBox(
                          width: 65.w,
                          child: Text(
                            e.title ?? '',
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  );
                }).toList()),
          ),
          ButtonComponent(
            title: 'Xem tất cả các dịch vụ', bgColor: button_color_home, callback: () => Get.toNamed("/service_manager", arguments: ''),)
        ],
      ),
    );
  }
}