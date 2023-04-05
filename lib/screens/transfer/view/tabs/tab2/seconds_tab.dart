import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/components/list_contacts.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/components/list_contacts_recently.dart';
import '../../../../../core/resources/strings.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';
import '../../../../../fake_data/data_fake_home.dart';
import '../../../../components/button/button_component.dart';
import '../components/contacts_container.dart';
import '../components/search_contacts.dart';
import '../components/text_field_trans_fer.dart';
import '../tab1/components/list_contacts_save.dart';

class SecondsTab extends StatefulWidget {
  const SecondsTab({Key? key}) : super(key: key);

  @override
  State<SecondsTab> createState() => _SecondsTabState();
}

class _SecondsTabState extends State<SecondsTab> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 630.w;
  double fromHeight = 77.h;
  int index = 1;
  bool statusSearch = true;
  bool visibly = true;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  backgroundColor: clr_white,
                  pinned: true,
                  expandedHeight: height,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet<void>(
                                context: context,
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25.r),
                                  ),
                                ),
                                builder: (BuildContext context) {
                                  return SafeArea(
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: width_12,
                                        right: width_12,
                                        top: height_8,
                                      ),
                                      padding: EdgeInsets.only(top: height_12),
                                      height: Get.size.height / 1.05,
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  TITLE_43,
                                                  style: TextStyle(
                                                    fontSize: fontSize_12,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: ()=> Navigator.pop(context),
                                                  child: Text(
                                                    CANCEL,
                                                    style: TextStyle(
                                                      fontSize: fontSize_12,
                                                      color: PRIMARY_COLOR,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: height_16),
                                              height: height_36,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [boxShadowSearch],
                                                  borderRadius: BorderRadius.circular(border_24),
                                                ),
                                                child: TextField(
                                                  maxLines: 1,
                                                  style: TextStyle(fontSize: fontSize_12),
                                                  textAlignVertical: TextAlignVertical.center,
                                                  decoration: InputDecoration(
                                                    filled: true,
                                                    prefixIcon: Icon(
                                                      Icons.search,
                                                      color: clr_black54,
                                                      size: fontSize_20,
                                                    ),
                                                    border: OutlineInputBorder(
                                                        borderSide: BorderSide.none,
                                                        borderRadius: BorderRadius.all(Radius.circular(
                                                          border_50,
                                                        ))),
                                                    fillColor: clr_white,
                                                    contentPadding: EdgeInsets.zero,
                                                    hintText: SEARCH,
                                                    hintStyle: TextStyle(
                                                      fontSize: fontSize_12,
                                                      fontWeight: FontWeight.w500,
                                                      color: clr_black26,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                  );
                                },
                              );
                            },
                            child: TextFieldTransFer(
                              enabled: false,
                              labelText: TITLE_43,
                              suffixIcon: Icons.arrow_drop_down_sharp,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: width_16,
                              right: width_16,
                              top: height_12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  SUGGEST,
                                  style: TextStyle(
                                    color: clr_black54,
                                    fontSize: fontSize_12,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: height_40,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: listImageBank
                                        .map((e) => Container(
                                              margin: EdgeInsets.only(right: width_16, top: height_8),
                                              child: CircleAvatar(
                                                  backgroundColor: clr_f6f5f7,
                                                  radius: border_16,
                                                  child: Image.network(
                                                    e.image ?? '',
                                                    width: width_24,
                                                    height: height_24,
                                                    fit: BoxFit.scaleDown,
                                                  )),
                                            ))
                                        .toList(),
                                  ),
                                )
                              ],
                            ),
                          ),
                          ContactsContainer(),
                        ],
                      ),
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(fromHeight),
                    child: Container(
                      color: clr_white,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: width_16,
                              right: width_16,
                            ),
                            child: TabBar(
                              labelColor: clr_black,
                              unselectedLabelColor: clr_black54,
                              indicatorColor: PRIMARY_COLOR,
                              onTap: (index) {
                                setState(() {
                                  if (index == 1) {
                                    visibly = false;
                                    height = 540.w;
                                    fromHeight = 10.h;
                                  } else if (index == 2) {
                                    statusSearch = false;
                                    visibly = true;
                                    height = 630.w;
                                    fromHeight = 77.h;
                                  } else {
                                    statusSearch = true;
                                    visibly = true;
                                    height = 630.w;
                                    fromHeight = 77.h;
                                  }
                                });
                              },
                              tabs: [
                                Tab(
                                  child: Text(
                                    CONTACT,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: fontSize_12,
                                      fontWeight: FontWeight.w600,
                                      height: lineHeight_1_2,
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    RECENTLY,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: fontSize_12,
                                      fontWeight: FontWeight.w600,
                                      height: lineHeight_1_2,
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    SAVED_TEMPLATES,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: fontSize_12,
                                      fontWeight: FontWeight.w600,
                                      height: lineHeight_1_2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SearchContacts(
                            visibly: visibly,
                            title: statusSearch ? SEARCH_2 : SEARCH_3,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListContacts(
                    list: listContacts,
                    callBack: () => Get.toNamed("/transaction_infor", arguments: ''),
                    icon: Icons.account_balance_wallet_rounded),
                ListContactsRecently(
                    list: listContacts, callBack: () => Get.toNamed("/transaction_infor", arguments: '')),
                ListContactsSave(),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(top: height_4, bottom: height_4),
            height: height_40,
            decoration: BoxDecoration(
              color: clr_white,
              boxShadow: [bottomNavigationBar],
            ), // Get.to(const RegisterStep3Page()
            child: ButtonComponent(
              title: NEXT,
              bgColor: button_color_home,
              callback: () => Get.toNamed("/transaction_infor", arguments: ''),
            ),
          )),
    );
  }
}
