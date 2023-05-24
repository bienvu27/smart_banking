import 'package:flutter/material.dart';
import '../../res/strings/strings.dart';
import '../../core/style/colors.dart';
import '../../core/style/size.dart';
import '../../fake_data/data_fake_home.dart';
import '../transfer/view/tabs/components/search_contacts.dart';
import 'components/notification_list.dart';
import 'components/notification_list_2.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(
                NOTIFICATION,
                style: TextStyle(
                  color: clr_black,
                  fontFamily: 'open_sans',
                  fontSize: fontSize_12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              backgroundColor: clr_white,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: width_8),
                  child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.settings,
                        color: clr_black,
                        size: fontSize_16,
                      )),
                )
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(height_64),
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
                              PROMOTIN_1,
                              style: TextStyle(
                                fontSize: fontSize_10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              VOLATILITY,
                              style: TextStyle(
                                fontSize: fontSize_10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              NOTIFI,
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
                    ),
                    SizedBox(height: height_4,),
                  ],
                ),
              )),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              NotificationList(list: listNoti, visibleImage: true, visibleIcon: true),
              NotificationList2(list: listNotification2),
              NotificationList(list: listNoti, visibleImage: false, visibleIcon: false),
            ],
          ),
        ));
  }
}
