import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
                                      height: height_120,
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
                                                      height: height_120,
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