import 'package:flutter/material.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/style/size.dart';
import '../../../../models/list_contacts_model.dart';

class ListContacts extends StatelessWidget {
  ListContacts({
    super.key,
    required this.list, this.icon, required this.callBack
  });

  final List<ListContactsModel> list;
  Widget? icon;
  Function?  callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: width_16, right: width_16,),
      color: clr_white,
      child: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: list.map((e) {
          return InkWell(
            onTap: () {
              if(callBack != null){
                callBack!(e);
              }
            },
            child: Container(
              margin: EdgeInsets.only(top: height_12,),
              color: clr_white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: clr_f6f5f7,
                        radius: border_16,
                        child: Image.asset(
                          e.image ?? '',
                          width: width_24,
                          height: height_24,
                        ),
                      ),
                      SizedBox(width: width_8,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name?.toUpperCase() ?? ''.toUpperCase(),
                            style: TextStyle(
                              color: clr_black,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w600,
                              fontSize: fontSize_11,),
                          ),
                          SizedBox(height: height_4),
                          Text(
                            e.numberAccount?.toUpperCase() ?? ''.toUpperCase(),
                            style: TextStyle(
                              color: clr_black,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w600,
                              fontSize: fontSize_10,),
                          ),
                          SizedBox(height: height_4),
                          Text(
                            e.nameBank?.toUpperCase() ?? ''.toUpperCase(),
                            style: TextStyle(
                              color: clr_black87,
                              fontFamily: 'open_sans',
                              fontSize: fontSize_10,
                              fontWeight: FontWeight.w500,),
                          ),
                        ],
                      ),
                    ],
                  ),
                  icon ?? SizedBox()
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}