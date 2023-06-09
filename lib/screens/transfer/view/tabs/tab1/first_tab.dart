import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/transfer/controller/transfer_controller.dart';
import '../../../../../res/strings/strings.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';
import '../../../../../fake_data/data_fake_home.dart';
import '../components/contacts_container.dart';
import '../components/search_contacts.dart';
import '../components/text_field_trans_fer.dart';
import 'components/list_contacts.dart';
import 'components/list_contacts_recently.dart';
import 'components/list_contacts_save.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key, required this.controller}) : super(key: key);

  final TransferController controller;

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  ScrollController? _scrollController;
  bool lastStatus = true;

  double height = Get.size.height > 650 ? height_500 : height_600;
  double heightInit = Get.size.height > 650 ? height_500 : height_600;
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
    print(Get.size.height);
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
                        Container(
                          decoration: BoxDecoration(
                            color: clr_f5f5f5,
                            borderRadius: BorderRadius.circular(border_10),
                          ),
                          margin: EdgeInsets.only(
                            top: height_10,
                            right: width_13,
                            left: width_13,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: height_5,
                              horizontal: width_10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cùng chủ tài khoản",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: fontSize_11,
                                    fontFamily: 'open_sans',
                                    fontWeight: FontWeight.bold,
                                    color: clr_Text_Grey,
                                    height: lineHeight_1_2,
                                  ),
                                ),
                                Switch(
                                  value: widget.controller.isSameOwner,
                                  onChanged: (value) => widget.controller.toggleSameOwner(
                                    context,
                                    !widget.controller.isSameOwner,
                                  ),
                                  activeColor: PRIMARY_COLOR,
                                ),
                              ],
                            ),
                          ),
                        ),
                        widget.controller.isSameOwner
                            ? GestureDetector(
                                onTap: () => widget.controller.showDialogBenef(context),
                                child: TextFieldTransFer(
                                  enabled: false,
                                  labelText: TITLE_CHOOSE_BENEF,
                                  suffixIcon: Icons.arrow_drop_down_sharp,
                                  textEditingController: widget.controller.beneficiaryAccountController,
                                ),
                              )
                            : TextFieldTransFer(
                                enabled: true,
                                labelText: TITLE_33,
                                suffixIcon: Icons.account_box_outlined,
                                textEditingController: widget.controller.beneficiaryAccountController,
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
                      mainAxisSize: MainAxisSize.min,
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
                                  height = heightInit - height_28;
                                  fromHeight = fromHeightInit - height_28;
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
                              });
                            },
                            tabs: [
                              Tab(
                                child: Text(
                                  CONTACT,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: fontSize_11,
                                    fontFamily: 'open_sans',
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
                                    fontSize: fontSize_11,
                                    fontFamily: 'open_sans',
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
                                    fontSize: fontSize_11,
                                    fontFamily: 'open_sans',
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
                          onChange: (_) => widget.controller.autoFillingWhenSearch(_),
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
                list: widget.controller.isSameOwner
                    ? widget.controller.listContactsSameOwnerSearch
                    : widget.controller.listContactsSearch,
                callBack: (e) => Get.toNamed("/transaction_infor", arguments: ''),
              ),
              ListContactsRecently(
                list: listContacts,
                callBack: () => Get.toNamed("/transaction_infor", arguments: ''),
              ),
              ListContactsSave(),
            ],
          ),
        ),
      ),
    );
  }
}
