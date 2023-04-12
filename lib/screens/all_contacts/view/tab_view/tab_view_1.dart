import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/strings.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../../../fake_data/data_fake_home.dart';
import '../../../transfer/view/tabs/components/search_contacts.dart';
import '../../../transfer/view/tabs/tab1/components/list_contacts_recently.dart';
import '../../model/list_contacts_2.dart';

class TabView1 extends StatefulWidget {
  const TabView1({Key? key}) : super(key: key);

  @override
  State<TabView1> createState() => _TabView1State();
}

class _TabView1State extends State<TabView1> {
  bool showHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SearchContacts(
                visibly: true,
                title: SEARCH,
              ),
              Column(
                children: [
                  Container(
                    color: clr_f5f5f5,
                    margin: EdgeInsets.only(top: height_8),
                    padding: EdgeInsets.only(
                      top: height_8,
                      bottom: height_8,
                      left: width_16,
                      right: width_16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.6,
                          child: Text(
                            TITLE_63,
                            style: TextStyle(
                              fontSize: fontSize_8,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'open_sans',
                              color: clr_black,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              showHide = !showHide;
                            });
                          },
                          child:  Icon(
                            showHide ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                            color: clr_black,
                            size: fontSize_26,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: showHide,
                    child: ListContacts2(
                      list: listContacts2,
                      callBack: () => Get.toNamed("/transaction_infor", arguments: ''),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: width_36,
        height: height_36,
        child: FloatingActionButton(
            backgroundColor: PRIMARY_COLOR,
            child: Icon(Icons.add, size: fontSize_32, color: Colors.white,),
            onPressed: ()=> Get.toNamed("/add_contacts", arguments: ''),),
      ),
    );
  }
}
