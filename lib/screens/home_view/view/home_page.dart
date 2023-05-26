import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/view_model/home_view_model/home_view_model.dart';
import '../../../core/resources/asset.dart';
import '../../../res/dimentions/gaps.dart';
import '../../../res/strings/strings.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../components/cover_widget/cover_widget.dart';
import '../components/grid_menu.dart';
import '../components/image_watermarks.dart';
import '../components/list_service.dart';
import '../components/service_favorite.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller) {
          return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  ImageWatermarks(image: icon_vrb_white),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CoverWidget(
                          controller: controller,
                        ),
                        gapH2,
                        GridMenu(controller: controller),
                        gapH2,
                        ServiceFavorite(
                          list: list,
                          controller: controller,
                        ),
                        gapH2,
                        Container(
                          margin: EdgeInsets.only(
                            left: width_12,
                            right: width_12,
                          ),
                          height: height_240,
                          child: PageView.builder(
                              controller: controller.pageController,
                              itemCount: images.length,
                              pageSnapping: true,
                              itemBuilder: (context, pagePosition) {
                                return ClipRRect(
                                    borderRadius: BorderRadius.circular(border_8),
                                    child: Image.asset(
                                      images[pagePosition],
                                      fit: BoxFit.fill,
                                    ));
                              }),
                        ),
                        gapH2,
                        Text(
                          TITLE_30,
                          style: TextStyle(
                            fontSize: fontSize_11,
                            fontFamily: 'open_sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        gapH2,
                        ListService(
                          listService: listService,
                          onTap: (e) => Get.toNamed(
                            "/service_manager",
                            arguments: [e.id, e.title],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ));
        });
  }
}
