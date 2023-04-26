import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/app_bar/app_bar_component.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../../components/grid_view/grid_view_component.dart';
import '../controller/card_service_controller.dart';

class CardServicePage extends StatelessWidget {
  const CardServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CardServiceController(),
        builder: (controller) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(height_104),
              child: Stack(
                children: [
                  PageView.builder(
                      controller: controller.pageController,
                      itemCount: imagesCardService.length,
                      pageSnapping: true,
                      itemBuilder: (context, pagePosition) {
                        return Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      imagesCardService[pagePosition],
                                    ),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: FractionalOffset.bottomCenter,
                                      end: FractionalOffset.topCenter,
                                      colors: [
                                        Colors.grey.withOpacity(0.0),
                                        Colors.black,
                                      ],
                                      stops: [
                                        0.0,
                                        1.0
                                      ])),
                            )
                          ],
                        );
                      }),
                  AppBarComponent(
                    title: SERVICE_CARD,
                    callback: () => Get.back(),
                    bgColor: Colors.transparent,
                    colorTitle: Colors.white,
                    colorIcon: Colors.white,
                    iconAction: Icons.home_outlined,
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: clr_white,
                    padding: EdgeInsets.only(top: height_8),
                    child: GridViewComponent(
                      list: listCardService,
                      title: LIST_SERVICE,
                      subTitle: SEE_ALL_SERVICES_2,
                      callback: () {
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
                              // height: MediaQuery.of(context).size.height / 2.3,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          SEE_ALL_SERVICES_2,
                                          style: TextStyle(
                                            fontFamily: 'open_sans',
                                            fontSize: fontSize_12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () => Navigator.pop(context),
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
                                        physics: const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        primary: false,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        crossAxisCount: 3,
                                        children: listCardService2.map((e) {
                                          return InkWell(
                                            onTap: () {
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
                                                      overflow: TextOverflow.ellipsis,
                                                      fontWeight: FontWeight.w600,
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
                    ),
                  ),
                  Container(
                      width: Get.size.width,
                      height: Get.size.height,
                      color: clr_white,
                      margin: EdgeInsets.only(top: height_8),
                      padding: EdgeInsets.only(
                        top: height_8,
                        left: width_10,
                        right: width_10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$TITLE_74',
                            style: TextStyle(
                              fontSize: fontSize_12,
                              fontWeight: FontWeight.w600,
                              color: clr_black,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: height_20),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: height_300,
                                      child: PageView.builder(
                                          controller: controller.cardController,
                                          itemCount: imagesCard.length,
                                          pageSnapping: true,
                                          itemBuilder: (context, pagePosition) {
                                            return Padding(
                                                padding: EdgeInsets.only(
                                                  left: width_40,
                                                  right: width_40,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Image.asset(
                                                      imagesCard[pagePosition].image ?? '',
                                                      width: width_248,
                                                      height: height_300,
                                                      fit: BoxFit.fill,
                                                    ),
                                                    Positioned(
                                                      bottom: height_8,
                                                      left: width_12,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            imagesCard[pagePosition].numberCard ?? '',
                                                            style: TextStyle(
                                                              fontSize: fontSize_10,
                                                              fontWeight: FontWeight.w600,
                                                              color: clr_white,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: height_2,
                                                          ),
                                                          Text(
                                                            imagesCard[pagePosition].name ?? '',
                                                            style: TextStyle(
                                                              fontSize: fontSize_10,
                                                              fontWeight: FontWeight.w400,
                                                              color: clr_white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ));
                                          }),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: ()=> controller.nextPage(),
                                      child: CircleAvatar(
                                        backgroundColor: clr_f6f5f7,
                                        radius: border_8,
                                        child: Icon(
                                          Icons.arrow_back_ios_new,
                                          color: Colors.black,
                                          size: fontSize_10,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: ()=> controller.previousPage(),
                                      child: CircleAvatar(
                                        backgroundColor: clr_f6f5f7,
                                        radius: border_8,
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.black,
                                          size: fontSize_10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height_16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: clr_f6f5f7,
                                      radius: border_10,
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.black,
                                        size: fontSize_16,
                                      ),
                                    ),
                                    SizedBox(height: height_4,),
                                    Text(
                                      TITLE_75,
                                      style: TextStyle(
                                        fontSize: fontSize_9,
                                        fontWeight: FontWeight.w500,
                                        color: clr_black,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: clr_f6f5f7,
                                      radius: border_10,
                                      child: Icon(
                                        Icons.vpn_lock,
                                        color: Colors.black,
                                        size: fontSize_16,
                                      ),
                                    ),
                                    SizedBox(height: height_4,),
                                    Text(
                                      TITLE_76,
                                      style: TextStyle(
                                        fontSize: fontSize_9,
                                        fontWeight: FontWeight.w500,
                                        color: clr_black,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: clr_f6f5f7,
                                      radius: border_10,
                                      child: Icon(
                                        Icons.more_horiz,
                                        color: Colors.black,
                                        size: fontSize_16,
                                      ),
                                    ),
                                    SizedBox(height: height_4,),
                                    Text(
                                      SEE_MORE,
                                      style: TextStyle(
                                        fontSize: fontSize_9,
                                        fontWeight: FontWeight.w500,
                                        color: clr_black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
          );
        });
  }
}
