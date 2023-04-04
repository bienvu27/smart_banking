import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../model/promotion_model.dart';

class ListPromotion extends StatelessWidget {
  const ListPromotion({
    super.key,
    required this.listPromotion,
  });

  final List<PromotionModel> listPromotion;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: clr_white,
      margin: EdgeInsets.only(
        top: height_8,
        bottom: height_12,
      ),
      padding: EdgeInsets.only(
        left: width_8,
        right: width_8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height_8,
          ),
          Text(
            PROMOTION_1,
            style: TextStyle(
              fontSize: fontSize_12,
              fontWeight: FontWeight.w600,
              color: clr_black,
            ),
          ),
          Column(
            children: listPromotion.map((e) {
              return Container(
                margin: EdgeInsets.only(top: height_8),
                padding: EdgeInsets.only(bottom: height_8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: width_1, color: clr_black26),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: width_80,
                      height: height_56,
                      margin: EdgeInsets.only(right: width_8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(border_8),
                        boxShadow: [boxShadowImage],
                        image: DecorationImage(image: NetworkImage(e.image ?? ''), fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      width: Get.size.width / 1.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            e.title ?? '',
                            maxLines: 2,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: fontSize_12,
                                height: lineHeight_1_2,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: height_4,
                          ),
                          Text(
                            '$TITLE_32 ${e.subTitle}',
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: fontSize_11,
                                overflow: TextOverflow.ellipsis,
                                color: clr_black54,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: height_4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: width_36,
                                child: Stack(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/svg/flower_rounded.svg',
                                      width: width_12,
                                      height: height_12,
                                      color: clr_flower_1,
                                      fit: BoxFit.contain,
                                    ),
                                    Positioned(
                                      left: width_8,
                                      child: SvgPicture.asset(
                                        'assets/svg/flower_rounded.svg',
                                        width: width_12,
                                        height: height_12,
                                        color: clr_yellow,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Positioned(
                                      left: width_16,
                                      child: SvgPicture.asset(
                                        'assets/svg/flower_rounded.svg',
                                        width: width_12,
                                        height: height_12,
                                        color: clr_blue,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width / 7,
                                    child: Text(
                                      e.point ?? '',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: fontSize_11,
                                          fontWeight: FontWeight.w600,
                                          color: PRIMARY_COLOR),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width / 7,
                                    child: Text(
                                      'B-Point',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: fontSize_11,
                                          fontWeight: FontWeight.w400,
                                          color: PRIMARY_COLOR),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    size: fontSize_12,
                                    color: clr_black54,
                                  ),
                                  SizedBox(
                                    width: width_2_5,
                                  ),
                                  Text(
                                    '${e.like}',
                                    style: TextStyle(
                                      fontSize: fontSize_11,
                                      fontWeight: FontWeight.w400,
                                      color: clr_black54,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
