import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/style/colors.dart';
import '../../../../../../core/style/size.dart';
import '../../transfer/models/list_contacts_model.dart';

class ListContacts2 extends StatelessWidget {
   ListContacts2({
    super.key,
    required this.list,
    required this.callBack, this.iconClick,
  });

  final List<ListContactsModel> list;
  final VoidCallback callBack;
  Function? iconClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: width_16, right: width_16),
      height: MediaQuery.of(context).size.height/1.5,
      margin: EdgeInsets.only(bottom: height_8),
      color: clr_white,
      child: ListView(
        children: list.map((e) {
          return InkWell(
            onTap: () => callBack(),
            child: Container(
              margin: EdgeInsets.only(
                top: height_12,
              ),
              color: clr_white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(
                        width: width_8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name?.toUpperCase() ?? ''.toUpperCase(),
                            style: TextStyle(
                              color: clr_black,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w600,
                              fontSize: fontSize_11,
                            ),
                          ),
                          SizedBox(height: height_4),
                          Text(
                            e.numberAccount?.toUpperCase() ?? ''.toUpperCase(),
                            style: TextStyle(
                              color: clr_black,
                              fontFamily: 'open_sans',
                              fontWeight: FontWeight.w600,
                              fontSize: fontSize_10,
                            ),
                          ),
                          SizedBox(height: height_4),
                          Text(
                            e.nameBank?.toUpperCase() ?? ''.toUpperCase(),
                            style: TextStyle(
                              color: clr_black87,
                              fontFamily: 'open_sans',
                              fontSize: fontSize_10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: ()=> iconClick!(),
                    child: Icon(
                      Icons.more_vert,
                      color: clr_black26,
                      size: 25.spMax,
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
