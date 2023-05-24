import 'package:flutter/material.dart';
import '../../../../../../res/strings/strings.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/style/size.dart';
import '../../../../models/list_contacts_model.dart';

class ListContactsSave extends StatelessWidget {
  const ListContactsSave({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: width_16, right: width_16),
      color: clr_white,
      child: Center(
          child: Text(
        TITLE_36,
        style: TextStyle(
          color: clr_black26,
          fontSize: fontSize_12,
        ),
      )),
    );
  }
}
