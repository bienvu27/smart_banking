import 'package:flutter/material.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/style/size.dart';
import '../../../../models/list_bank_model.dart';

class ListBank extends StatelessWidget {
  ListBank({super.key, required this.list, this.icon, required this.callBack});

  final List<ListBankModel> list;
  IconData? icon;
  final VoidCallback callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: clr_white,
      child: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: list.map((e) {
          return InkWell(
            onTap: () => callBack(),
            child: Container(
              margin: EdgeInsets.only(
                top: height_12,
              ),
              color: clr_white,
              child: Stack(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: clr_f6f5f7,
                        radius: border_16,
                        child: Image.asset(
                          e.image ?? '',
                          width: width_20,
                          height: height_20,
                        ),
                      ),
                      SizedBox(
                        width: width_8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                e.title ?? '',
                                maxLines: 2,
                                style: TextStyle(
                                  color: clr_black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: fontSize_12,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(height: height_4),
                            Flexible(
                              child: Text(
                                e.subTitle ?? '',
                                maxLines: 2,
                                style: TextStyle(
                                  color: clr_black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: fontSize_12,
                                ),
                              ),
                            ),
                            SizedBox(height: height_8),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.35,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(width: width_1, color: clr_black12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 1,
                    child: Icon(
                      icon,
                      color: clr_black26,
                      size: fontSize_16,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
