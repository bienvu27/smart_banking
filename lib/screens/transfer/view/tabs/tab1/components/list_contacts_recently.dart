import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../res/strings/strings.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/style/size.dart';
import '../../../../models/list_contacts_model.dart';

class ListContactsRecently extends StatelessWidget {
  const ListContactsRecently({
    super.key,
    required this.list,
    required this.callBack,
  });

  final List<ListContactsModel> list;
  final VoidCallback callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: width_16,
        right: width_16,
      ),
      color: clr_white,
      child: Center(
          child: Text(
        TITLE_68,
        style: TextStyle(
          color: clr_black26,
          fontSize: fontSize_11,
          fontFamily: 'open_sans',
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}

// Container(
// padding: EdgeInsets.only(left: width_16, right: width_16),
// color: clr_white,
// child: ListView(
// physics: BouncingScrollPhysics(),
// shrinkWrap: true,
// children: list.map((e) {
// return InkWell(
// onTap: () => callBack(),
// child: Container(
// margin: EdgeInsets.only(
// top: height_12,
// ),
// color: clr_white,
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// CircleAvatar(
// backgroundColor: clr_f6f5f7,
// radius: border_16,
// child: Image.asset(
// e.image ?? '',
// width: width_24,
// height: height_24,
// ),
// ),
// SizedBox(
// width: width_8,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// e.name?.toUpperCase() ?? ''.toUpperCase(),
// style: TextStyle(
// color: clr_black,
// fontFamily: 'open_sans',
// fontWeight: FontWeight.w600,
// fontSize: fontSize_11,
// ),
// ),
// SizedBox(height: height_4),
// Text(
// e.numberAccount?.toUpperCase() ?? ''.toUpperCase(),
// style: TextStyle(
// color: clr_black,
// fontFamily: 'open_sans',
// fontWeight: FontWeight.w600,
// fontSize: fontSize_10,
// ),
// ),
// SizedBox(height: height_4),
// Text(
// e.nameBank?.toUpperCase() ?? ''.toUpperCase(),
// style: TextStyle(
// color: clr_black87,
// fontFamily: 'open_sans',
// fontSize: fontSize_10,
// fontWeight: FontWeight.w500,
// ),
// ),
// SizedBox(height: height_4),
// Text(
// '${e.money} VND'.toUpperCase(),
// style: TextStyle(
// color: clr_black,
// fontSize: fontSize_12,
// fontWeight: FontWeight.w600,
// ),
// ),
// ],
// ),
// ],
// ),
// Icon(
// Icons.more_vert,
// color: clr_black26,
// size: 25.spMax,
// )
// ],
// ),
// ),
// );
// }).toList(),
// ),
// );
