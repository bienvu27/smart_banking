import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/resources/strings.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';

class ContactsContainer extends StatelessWidget {
  const ContactsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: clr_f5f5f5,
      height: height_28,
      margin: EdgeInsets.only(top: height_12),
      padding: EdgeInsets.only(top: height_4, left: width_16, right: width_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.6,
            child: Text(
              TITLE_34,
              style: TextStyle(
                fontSize: fontSize_10,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                color: clr_a6a8a9,
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed("/all_contacts", arguments: ''),
            child: Text(
              TITLE_35,
              style: TextStyle(
                fontSize: fontSize_10,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                color: PRIMARY_COLOR,
              ),
            ),
          ),
        ],
      ),
    );
  }
}