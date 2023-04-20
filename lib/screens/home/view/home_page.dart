import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:smart_banking/screens/home/controller/home_controller.dart';
import '../../../core/resources/name_icon.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../components/cover_widget.dart';
import '../components/grid_menu.dart';
import '../components/list_service.dart';
import '../components/service_favorite.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Image.asset(
                        icon_vrb,
                        width: width_80,
                        height: height_80,
                        color: color_white_opacity,
                        colorBlendMode: BlendMode.modulate,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CoverWidget(controller: controller,),
                        SizedBox(
                          height: height_12,
                        ),
                        GridMenu(controller: controller),
                        SizedBox(
                          height: height_12,
                        ),
                        ServiceFavorite(list: list, controller: controller,),
                        SizedBox(
                          height: height_12,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: width_12,
                            right: width_12,
                          ),
                          height: height_96,
                          child: PageView.builder(
                            controller: controller.pageController,
                              itemCount: images.length,
                              pageSnapping: true,
                              itemBuilder: (context, pagePosition) {
                                return ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(border_8),
                                    child: Image.asset(
                                      images[pagePosition],
                                      fit: BoxFit.fill,
                                    ));
                              }),
                        ),
                        SizedBox(
                          height: height_12,
                        ),
                        Text(
                          TITLE_30,
                          style: TextStyle(
                            fontSize: fontSize_11,
                            fontFamily: 'open_sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: height_12,
                        ),
                        ListService(listService: listService)
                      ],
                    ),
                  ),
                ],
              ));
        });
  }
}
