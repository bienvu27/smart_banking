import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/contacts_manager/controller/contacts_manager_controller.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/button/back_icon_button.dart';
import '../../transfer/view/tabs/components/search_contacts.dart';
import '../../transfer/view/tabs/tab1/components/list_contacts.dart';
import 'my_contacts.dart';

class ContactsManagerPage extends StatelessWidget {
  ContactsManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactsManagerController>(
        init: ContactsManagerController(),
        builder: (controller) {
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
                                  style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  TAB_CONTACTS_2,
                                  style: TextStyle(
                                    fontSize: fontSize_10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SearchContacts(
                          visibly: true,
                          title: SEARCH,
                          searchTextController: controller.searchTextController,
                          onChange: (_) {
                            controller.autoFillingWhenSearch(_);
                          },
                        )
                      ],
                    ),
                  )),
              body: TabBarView(
                children: [
                  ListContacts(
                    list: controller.listContactsSearch,
                    callBack: () =>
                        Get.toNamed("/transaction_infor", arguments: ''),
                  ),
                  MyContacts(contacts: controller.contactsSearch, ),
                ],
              ),
            ),
          );
        });
  }
}
