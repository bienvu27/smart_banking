import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../../components/button/back_icon_button.dart';
import '../../transfer/view/tabs/components/search_contacts.dart';
import '../../transfer/view/tabs/tab1/components/list_contacts.dart';
import 'my_contacts.dart';

class ContactsManagerPage extends StatelessWidget {
  const ContactsManagerPage({Key? key}) : super(key: key);

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
              preferredSize: Size.fromHeight(height_56),
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
                            TAB_CONTACTS_1,
                            style: TextStyle( fontSize: fontSize_10, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Tab(
                          child: Text(
                            TAB_CONTACTS_2,
                            style: TextStyle(fontSize: fontSize_10, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SearchContacts(visibly: true, title: SEARCH,)
                ],
              ),
            )),
        body: TabBarView(
          children: [
            ListContacts(
              list: listContacts,
              callBack: () => Get.toNamed("/transaction_infor", arguments: ''),
            ),
            const MyContacts(),
          ],
        ),
      ),
    );
  }
}
