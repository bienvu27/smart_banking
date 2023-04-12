import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/style/size.dart';
import '../../../../controller/transfer_controller.dart';
import '../../../../models/list_bank_model.dart';

class ListBank extends StatelessWidget {
  ListBank({
    super.key,
    required this.list,
    this.onTapElement,
    this.icon,
  });

  final List<ListBankModel> list;
  IconData? icon;
  Function? onTapElement;

  // final VoidCallback callBack;

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: clr_white,
        child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: list.map((e) {
            return InkWell(
              onTap: () {
                if(onTapElement != null) {
                  onTapElement!(e);
                }
              } ,
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
                            width: width_18,
                            height: height_18,
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
                                    fontFamily: 'open_sans',
                                    fontSize: fontSize_11,
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
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'open_sans',
                                    fontSize: fontSize_10,
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
