import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/all_contacts/view/tab_view/tab_view_1.dart';
import 'package:smart_banking/screens/all_contacts/view/tab_view/tab_view_2.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../../components/button/back_icon_button.dart';
import '../../contacts_manager/view/my_contacts.dart';
import '../../transfer/view/tabs/components/search_contacts.dart';
import '../../transfer/view/tabs/tab1/components/list_contacts.dart';

class AllContactsPage extends StatelessWidget {
  const AllContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text(
              CONTACTS_MANAGER,
              style: TextStyle(
                color: clr_black,
                fontSize: fontSize_12,
                fontWeight: FontWeight.w600,
              ),
            ),
            leading: BackIconButton(
              callback: () => Navigator.pop(context),
              color: Colors.black,
            ),
            backgroundColor: clr_white,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: width_8),
                child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.home_outlined,
                      color: clr_black,
                      size: fontSize_20,
                    )),
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(height_40),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: width_16,
                      right: width_16,
                      top: height_8,
                      bottom: height_6,
                    ),
                    height: height_26,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        border_16,
                      ),
                    ),
                    child: TabBar(
                      padding: EdgeInsets.only(
                        top: height_3,
                        right: width_2_5,
                        left: width_2_5,
                        bottom: height_3,
                      ),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          border_16,
                        ),
                        color: clr_white,
                      ),
                      labelColor: PRIMARY_COLOR,
                      unselectedLabelColor: clr_black,
                      tabs: [
                        Tab(
                          child: Text(
                            TAB_CONTACTS_3,
                            style: TextStyle(
                              fontSize: fontSize_9,
                              fontFamily: 'open_sans',
                              color: PRIMARY_COLOR,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            SAVE_TRANSFER_2,
                            style: TextStyle(
                              fontSize: fontSize_9,
                              fontFamily: 'open_sans',
                              color: PRIMARY_COLOR,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            TabView1(),
            TabView2(),
          ],
        ),
      ),
    );
  }
}
