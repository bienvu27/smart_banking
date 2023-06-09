import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/components/list_contacts.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/components/list_contacts_recently.dart';
import '../../../../../res/resources/assets.dart';
import '../../../../../res/strings/strings.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';
import '../../../../../fake_data/data_fake_home.dart';
import '../../../../transaction_infor/view/transaction_infor_page.dart';
import '../../../controller/dialog_search_bank_controller.dart';
import '../../../controller/transfer_controller.dart';
import '../components/contacts_container.dart';
import '../components/search_contacts.dart';
import '../components/text_field_trans_fer_tab2.dart';
import '../tab1/components/list_bank.dart';
import '../tab1/components/list_contacts_save.dart';

class SecondsTab extends StatefulWidget {
  final TransferController controller;
  SecondsTab({Key? key, required this.controller}) : super(key: key);

  @override
  State<SecondsTab> createState() => _SecondsTabState();
}

class _SecondsTabState extends State<SecondsTab> {
  ScrollController? _scrollController;
  bool lastStatus = true;

  double height = Get.size.height > 650 ? height_560 : height_660;
  double heightInit = Get.size.height > 650 ? height_560 : height_660;
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
                                InkWell(
                                  onTap: () => widget.controller.showDialogBank(context, widget.controller),
                                  child: TextFieldTransFerTab2(
                                    enabled: false,
                                    labelText: TITLE_43,
                                    suffixIcon: Icons.arrow_drop_down_sharp,
                                    title: widget.controller.title,
                                    subfix: widget.controller.image,
                                    textEditingController: widget.controller.textController,
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
                                          children: listBanks
                                              .map((e) => InkWell(
                                                    onTap: () {
                                                      widget.controller.log(e.title!, e.image!, e.subTitle!);
                                                    },
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                        right: width_16,
                                                        top: height_8,
                                                      ),
                                                      child: CircleAvatar(
                                                          backgroundColor: clr_f6f5f7,
                                                          radius: border_16,
                                                          child: Image.asset(
                                                            e.image ?? '',
                                                            width: width_24,
                                                            height: height_24,
                                                            fit: BoxFit.scaleDown,
                                                          )),
                                                    ),
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
                                  onChange: (_) => widget.controller.autoFillingWhenSearch2(_),
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
                        list: widget.controller.listContacts2Search,
                        callBack: (e) => Get.to(TransactionInforPage(
                          isNapas: true,
                        )),
                        icon: _iconLightning()
                      ),
                      ListContactsRecently(
                        list: widget.controller.listContacts2Search,
                        callBack: () => Get.toNamed("/transaction_infor", arguments: ''),
                      ),
                      ListContactsSave(),
                    ],
                  ),
                ),
              )
    );
  }

}

Widget _iconLightning(){
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: width_6,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black26)
            ),
          ),
          SizedBox(height: height_2,),
          Container(
            width: width_4,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black26)
            ),
          ),
          SizedBox(height: height_2,),
          Container(
            width: width_6,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black26)
            ),
          ),
        ],
      ),
      SizedBox(width: width_2,),
      Container(
        padding: EdgeInsets.only(
          top: height_1,
          bottom: height_1,
          left: width_4,
          right: width_4,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(border_2,),
            border: Border.all(
              width: 1,
              color: Colors.black26,
            )),
        child: SvgPicture.asset(
          icon_lightning,
          color: Colors.black26,
          height: height_8,
          width: width_8,
        ),
      ),
    ],
  );
}
