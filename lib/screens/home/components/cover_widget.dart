import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_banking/core/common/utils.dart';
import '../../../core/resources/asset.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../router/app_routers.dart';
import '../../dashboard/controller/dashboard_controller.dart';
import '../controller/home_controller.dart';
import 'authentication.dart';
import 'infor_user.dart';

class CoverWidget extends StatelessWidget {
  HomeController controller;

  CoverWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final isLogin = controller.isLogin;
    return SizedBox(
      height: height / 1.8,
      child: Stack(
        children: [
          Container(
            height: height / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(vrb_banner),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(1.0),
                  BlendMode.softLight,
                ),
              ),
            ),
          ),
          Container(
            height: height / 4,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient:
                    LinearGradient(begin: FractionalOffset.bottomCenter, end: FractionalOffset.topCenter, colors: [
                  Colors.grey.withOpacity(0.1),
                  Colors.black87,
                ], stops: [
                  0.0,
                  1.0
                ])),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: width_12,
              right: width_12,
              top: height_4,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height_16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: .8,
                        child: Image.asset(
                          vrb_banner_icon,
                          width: height_60,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Utils.showSearchDialog(context);
                        },
                        child: Container(
                          height: height_22,
                          width: Get.size.width / 1.6,
                          child: TextField(
                            enabled: false,
                            maxLines: 1,
                            style: TextStyle(fontSize: fontSize_10),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              filled: true,
                              prefixIcon: Icon(
                                Icons.search,
                                color: clr_white54.withOpacity(.3),
                                size: fontSize_20,
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(border_16),
                                  )),
                              fillColor: clr_black26,
                              contentPadding: EdgeInsets.zero,
                              hintText: SEARCH,
                              hintStyle: TextStyle(
                                fontFamily: 'open_sans',
                                fontSize: fontSize_11,
                                color: clr_white54.withOpacity(.4),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height_9),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              if (isLogin) {
                                {
                                  showModalBottomSheet<void>(
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
                                        height: MediaQuery.of(context).size.height / 3,
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.account_circle_rounded,
                                                    color: Colors.black26,
                                                    size: fontSize_20,
                                                  ),
                                                  SizedBox(
                                                    width: width_12,
                                                  ),
                                                  Container(
                                                    width: Get.size.width/1.23,
                                                    padding: EdgeInsets.only(bottom: height_12),
                                                    decoration: const BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                      width: 1.5,
                                                      color: Colors.black12,
                                                    ))),
                                                    child: Text(
                                                      CHANGE_AVATER,
                                                      style: TextStyle(
                                                        fontFamily: 'open_sans',
                                                        fontSize: fontSize_12,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height_16,
                                              ),

                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.image,
                                                    color: Colors.black26,
                                                    size: fontSize_20,
                                                  ),
                                                  SizedBox(
                                                    width: width_12,
                                                  ),
                                                  Container(
                                                    width: Get.size.width/1.23,
                                                    padding: EdgeInsets.only(bottom: height_12),
                                                    decoration: const BoxDecoration(
                                                        border: Border(
                                                            bottom: BorderSide(
                                                              width: 1.5,
                                                              color: Colors.black12,
                                                            ))),
                                                    child: Text(
                                                      CHANGE_BG,
                                                      style: TextStyle(
                                                        fontFamily: 'open_sans',
                                                        fontSize: fontSize_12,
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: height_16,
                                              ),

                                              InkWell(
                                                onTap: () async {
                                                  Utils.showDialogLogout(context, LOGOUT, LOGOUT_2, NO, YES);
                                                },
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.logout,
                                                      color: Colors.redAccent,
                                                      size: fontSize_20,
                                                    ),
                                                    SizedBox(
                                                      width: width_12,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          LOGOUT,
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            fontSize: fontSize_12,
                                                            fontWeight: FontWeight.w600,
                                                          ),
                                                        ),
                                                        SizedBox(height: height_4,),
                                                        Text(
                                                          'Lần đăng nhập gần nhất \n'
                                                              '27/04/2023 09:05:21'
                                                          ,
                                                          style: TextStyle(
                                                            fontFamily: 'open_sans',
                                                            color: Colors.black38,
                                                            fontSize: fontSize_10,
                                                            fontWeight: FontWeight.w500,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ]),
                                      );
                                    },
                                  );
                                }
                                ;
                              }
                            },
                            child: CircleAvatar(
                              backgroundColor: clr_white60,
                              radius: fontSize_16,
                              child: isLogin
                                  ? Image.asset(
                                      logoSeatech,
                                      width: width_28,
                                      fit: BoxFit.fitWidth,
                                    )
                                  : Icon(
                                      Icons.person,
                                      color: clr_white,
                                      size: fontSize_20,
                                    ),
                            ),
                          ),
                          Positioned(
                              right: width_0,
                              bottom: size_0,
                              child: Container(
                                width: width_10,
                                height: height_10,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(color: clr_black12),
                                  color: clr_white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.menu, size: fontSize_7),
                              ))
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width_8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              GOOD_MORNING,
                              style: TextStyle(
                                  fontFamily: 'open_sans',
                                  fontSize: fontSize_10,
                                  fontWeight: FontWeight.w600,
                                  color: clr_white70),
                            ),
                            controller.isLogin
                                ? Text(
                                    NAME_TEST.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: fontSize_12,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w700,
                                      color: clr_white,
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (!controller.isLogin) ...[
            const Authentication(),
          ] else ...[
            const InforUser(),
          ]
        ],
      ),
    );
  }
}
