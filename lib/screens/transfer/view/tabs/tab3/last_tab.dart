import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../res/strings/strings.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';
import '../../../../../fake_data/data_fake_home.dart';
import '../../../controller/transfer_controller.dart';
import '../components/contacts_container.dart';
import '../components/search_contacts.dart';
import '../components/text_field_trans_fer.dart';
import '../tab1/components/list_contacts.dart';
import '../tab1/components/list_contacts_recently.dart';
import '../tab1/components/list_contacts_save.dart';

class LastTab extends StatefulWidget {
  final TransferController controller;
  LastTab({Key? key, required this.controller}) : super(key: key);

  @override
  State<LastTab> createState() => _LastTabState();
}

class _LastTabState extends State<LastTab> {
  ScrollController? _scrollController;
  bool lastStatus = true;

  double height = Get.size.height > 650 ? height_370 : height_460;
  double heightInit = Get.size.height > 650 ? height_370 : height_460;
  double fromHeight = Get.size.height > 650 ? height_100 : height_96;
  double fromHeightInit = Get.size.height > 650 ? height_100 : height_96;

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
                        TextFieldTransFer(
                          enabled: true,
                          labelText: TITLE_44,
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
                                  // height = 344.w;
                                  height = heightInit - height_28;
                                  fromHeight = fromHeightInit;
                                } else if (index == 2) {
                                  statusSearch = false;
                                  visibly = true;
                                  height = heightInit;
                                  fromHeight = fromHeightInit;
                                } else {
                                  statusSearch = true;
                                  visibly = true;
                                  height = heightInit;
                                  fromHeight = fromHeightInit;
                                }
                                print(visibly);
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
                        SizedBox(
                          height: height_10,
                        ),
                        SearchContacts(
                          visibly: visibly,
                          title: statusSearch ? SEARCH_2 : SEARCH_3,
                          onChange: (_) => widget.controller.autoFillingWhenSearch3(_),
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
                  list: widget.controller.listContacts3Search,
                  callBack: (e) =>
                      Get.toNamed("/transaction_infor", arguments: '')),
              ListContactsRecently(
                  list: widget.controller.listContacts3Search,
                  callBack: () =>
                      Get.toNamed("/transaction_infor", arguments: '')),
              ListContactsSave(),
            ],
          ),
        ),
      ),
    );
  }
}
