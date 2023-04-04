import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../model/list_service_model.dart';

class ListService extends StatelessWidget {
  const ListService({
    super.key,
    required this.listService,
  });

  final List<ListServiceModel> listService;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: height_20),
      child: Column(
        children: listService.map((e) {
          return Container(
            margin: EdgeInsets.only(
              left: width_12,
              right: width_12,
              top: height_8,
            ),
            padding: EdgeInsets.only(
              left: width_8,
              right: width_8,
              bottom: height_8,
              top: height_8,
            ),
            width: Get.size.width,
            decoration: BoxDecoration(
              color: button_color_home,
              borderRadius: BorderRadius.circular(border_10),
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      '${e.image}',
                      width: height_32,
                      height: height_32,
                      fit: BoxFit.contain,
                    ),
                    Container(
                      width: Get.size.width / 1.5,
                      margin: EdgeInsets.only(
                        left: width_10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.title ?? '',
                            style: TextStyle(
                              fontSize: fontSize_12,
                              color: PRIMARY_COLOR,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: height_4,
                          ),
                          Text(
                            e.description ?? '',
                            maxLines: 3,
                            style: TextStyle(
                              height: 1.7,
                              fontSize: fontSize_11,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                    top: size_0,
                    right: size_0,
                    child: Container(
                      padding: EdgeInsets.only(
                        top: height_2,
                        bottom: height_2,
                        left: width_4,
                        right: width_4,
                      ),
                      decoration: BoxDecoration(
                        color: clr_blue_customization_1,
                        borderRadius: BorderRadius.circular(width_10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('${e.numberService}',
                              style: TextStyle(
                                fontSize: fontSize_10,
                                color: PRIMARY_COLOR,
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(width: width_2),
                          Text(SERVICE,
                              style: TextStyle(
                                fontSize: fontSize_10,
                                color: PRIMARY_COLOR,
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(width: width_2),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: fontSize_10,
                            color: PRIMARY_COLOR,
                          )
                        ],
                      ),
                    ))
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
