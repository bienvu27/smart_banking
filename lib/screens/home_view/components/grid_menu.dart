import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_banking/screens/components/dialog/custom_dialog.dart';
import 'package:get/get.dart';
import 'package:smart_banking/view_model/home_view_model/home_view_model.dart';
import '../../../utils/utils.dart';
import '../../../core/resources/asset.dart';
import '../../../res/strings/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import 'grid_menu_component.dart';

class GridMenu extends StatelessWidget {
  HomeViewModel controller;

  GridMenu({super.key, required this.controller});

  void showAuthenticationDialog(BuildContext context, String nameNavTo) {
    !controller.isLogin
        ? Utils.showAuthenticationDialog(context)
        : (nameNavTo.isNotEmpty
            ? Get.toNamed(nameNavTo, arguments: '')
            : Utils.showWarningDialog(context, "Chưa cập nhật"));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: clr_white,
      width: width,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: width_10,
                    right: width_4,
                  ),
                  child: GridMenuComponent(
                    callback: () {
                      showAuthenticationDialog(context, "/transfer");
                    },
                    title: TRANSFER,
                    icon: 'assets/svg/icon_white/2102.svg',
                    topLeft: border_10,
                    topRight: border_10,
                    bottomLeft: border_10,
                    bottomRight: size_0,
                    color: PRIMARY_COLOR,
                    gradient: linearGradient1,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: width_4, right: width_10),
                  child: GridMenuComponent(
                    callback: () {
                      showAuthenticationDialog(context, "/card_service");
                    },
                    title: SERVICE_CARD,
                    icon: image_service_card,
                    topLeft: border_10,
                    topRight: border_10,
                    bottomLeft: size_0,
                    bottomRight: border_10,
                    color: PRIMARY_COLOR_RED,
                    gradient: linearGradient2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height_8,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: width_10, right: width_4),
                  child: GridMenuComponent(
                    callback: () {
                      showAuthenticationDialog(context, "");
                    },
                    title: PAYMENT,
                    icon: image_payment,
                    topLeft: border_10,
                    topRight: size_0,
                    bottomLeft: border_10,
                    bottomRight: border_10,
                    color: PRIMARY_COLOR_RED,
                    gradient: linearGradient3,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: width_4, right: width_10),
                  child: GridMenuComponent(
                    callback: () {
                      !controller.isLogin
                          ? Utils.showAuthenticationDialog(context)
                          : showModalBottomSheet<void>(
                              backgroundColor: Colors.white,
                              context: context,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(border_10),
                                ),
                              ),
                              builder: (BuildContext context) {
                                return Container(
                                  margin: EdgeInsets.only(
                                    top: height_8,
                                  ),
                                  color: Colors.white,
                                  padding: EdgeInsets.only(
                                    top: height_12,
                                    left: width_12,
                                    right: width_12,
                                  ),
                                  // height: MediaQuery.of(context).size.height / 2.3,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              SHOPPING,
                                              style: TextStyle(
                                                fontFamily: 'open_sans',
                                                fontSize: fontSize_12,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                CANCEL,
                                                style: TextStyle(
                                                  fontSize: fontSize_12,
                                                  color: PRIMARY_COLOR,
                                                  fontFamily: 'open_sans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: height_16,
                                        ),
                                        GridView.count(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            primary: false,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10,
                                            crossAxisCount: 3,
                                            children: listCardService2.map((e) {
                                              return InkWell(
                                                onTap: () {},
                                                child: Column(
                                                  children: [
                                                    Stack(
                                                      alignment:
                                                          Alignment.center,
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
                                                            decoration:
                                                                BoxDecoration(
                                                              boxShadow: [
                                                                boxShadowIcon
                                                              ],
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
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          fontSize: fontSize_10,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              );
                                            }).toList()),
                                      ]),
                                );
                              },
                            );
                    },
                    title: DEPOSITS,
                    icon: image_save_money,
                    topLeft: size_0,
                    topRight: border_10,
                    bottomLeft: border_10,
                    bottomRight: border_10,
                    color: PRIMARY_COLOR,
                    gradient: linearGradient4,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
