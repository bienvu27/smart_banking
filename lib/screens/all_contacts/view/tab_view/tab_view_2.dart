import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/strings.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../../../fake_data/data_fake_home.dart';
import '../../../transfer/view/tabs/components/search_contacts.dart';
import '../../../transfer/view/tabs/tab1/components/list_contacts_recently.dart';
import '../../model/list_contacts_2.dart';

class TabView2 extends StatefulWidget {
  const TabView2({Key? key}) : super(key: key);

  @override
  State<TabView2> createState() => _TabView2State();
}

class _TabView2State extends State<TabView2> {
  bool showHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: height_40,),
            Text(
              TITLE_64,
              style: TextStyle(
                fontSize: fontSize_10,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                fontFamily: 'open_sans',
                color: clr_black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
