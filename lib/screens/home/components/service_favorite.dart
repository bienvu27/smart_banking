import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/home/controller/home_controller.dart';
import '../../../core/common/utils.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/style/size.dart';
import '../../components/dialog/custom_dialog.dart';
import '../../service_manager/model/service_favorite_model.dart';

class ServiceFavorite extends StatelessWidget {
  HomeController controller;

  ServiceFavorite({
    super.key,
    required this.list,
    required this.controller
  });

  final List<ServiceFavoriteModel> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width_10, right: width_10,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                SERVICES_FAVORITE,
                style: TextStyle(
                  fontSize: fontSize_11,
                  fontFamily: 'open_sans',
                  fontWeight: FontWeight.w600,
                  color: clr_black,
                ),
              ),
              Text(
                CUSTOMIZATION,
                style: TextStyle(
                  fontSize: fontSize_11,
                  fontFamily: 'open_sans',
                  fontWeight: FontWeight.w600,
                  color: PRIMARY_COLOR,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: width_10,
            right: width_10,
          ),
          child: Container(
            child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: list.map((e) {
                  return InkWell(
                    onTap: () {
                      !controller.isLogin ?
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                                title: TITLE_31,
                                cancel: CANCEL2,
                                submit: LOGIN,
                                clickCallback: () {
                                  Navigator.of(context).pop();
                                  Utils.showAuthenticationDialog(context);
                                },
                              )):Utils.showWarningDialog(context, "Chưa cập nhật");
                    },
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
                              fontFamily: 'open_sans',
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }).toList()),
          ),
        ),
        InkWell(
          onTap: () => Get.toNamed("/service_manager", arguments: [1, "Tất cả các dịch vụ"]),
          child: Container(
            margin: EdgeInsets.only(
              left: width_10,
              right: width_10,
              top: height_8,
            ),
            padding: EdgeInsets.only(
              top: height_10,
              bottom: height_10,
            ),
            width: Get.size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: button_color_home,
              borderRadius: BorderRadius.circular(border_8),
            ),
            child: Text(
              SEE_ALL_SERVICES,
              style: TextStyle(
                fontSize: fontSize_11,
                fontWeight: FontWeight.w600,
                fontFamily: 'open_sans',
                color: PRIMARY_COLOR,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
