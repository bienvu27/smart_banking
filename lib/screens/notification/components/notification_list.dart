import 'package:flutter/material.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../model/notification_model.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    super.key,
    required this.list,
    required this.visibleImage,
    required this.visibleIcon,
  });

  final List<NotificationModel> list;
  final bool visibleImage, visibleIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: clr_white,
      child: ListView(
        children: list.map((e) {
          return Container(
            padding: EdgeInsets.only(bottom: height_24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: height_8,
                    left: width_8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hôm qua, ${e.date}',
                        style: TextStyle(
                            fontSize: fontSize_10, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: height_8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.verified_outlined,
                            size: fontSize_12,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: width_4,
                          ),
                          Text(
                            '14:55',
                            style: TextStyle(
                                fontSize: fontSize_10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: visibleImage,
                  child: Container(
                    margin: EdgeInsets.only(top: height_12),
                    width: MediaQuery.of(context).size.width,
                    height: height_212,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('${e.image}'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: height_8, right: width_8, left: width_8),
                    padding: EdgeInsets.only(
                        top: height_8, bottom: height_8, right: width_8, left: width_8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(border_4),
                        color: Colors.grey[100]),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: e.description!.map((data) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: RichText(
                                text: TextSpan(children: [
                                  WidgetSpan(
                                    child: Visibility(
                                      visible: visibleIcon,
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              top: height_2, right: width_4),
                                          child: Image.network(
                                            data.image ?? '',
                                            width: width_12,
                                            height: width_12,
                                          )),
                                    ),
                                  ),
                                  TextSpan(
                                    text: data.description,
                                    style: TextStyle(
                                        fontSize: fontSize_12,
                                        height: lineHeight_1_2,
                                        color: clr_black),
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ))
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
