import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/transfer/view/tabs/components/text_field_trans_fer_tab2.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/components/list_bank.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/first_tab.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab2/seconds_tab.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab3/last_tab.dart';

import '../../../core/resources/name_icon.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../../components/button/back_icon_button.dart';
import '../controller/transfer_controller.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: GetBuilder<TransferController>(
          init: TransferController(),
          builder: (controller) {
            return Scaffold(
              appBar: AppBar(
                  elevation: 0,
                  centerTitle: true,
                  title: Text(
                    CHOOSE_PEOPLE,
                    style: TextStyle(
                      color: clr_black,
                      fontSize: fontSize_12,
                      fontFamily: 'open_sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  backgroundColor: clr_white,
                  leading: BackIconButton(
                    callback: () => Navigator.pop(context),
                    color: Colors.black,
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(80.h),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: width_16,
                        right: width_16,
                        top: height_8,
                      ),
                      height: height_44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          border_10,
                        ),
                        boxShadow: [boxShadowTab],
                        // gradient: linearGradientTab,
                        color: PRIMARY_COLOR,
                      ),
                      child: TabBar(
                        padding: EdgeInsets.only(
                          top: height_4,
                          left: width_4,
                          right: width_4,
                          bottom: height_4,
                        ),
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            border_10,
                          ),
                          // color: clr_66cacef,
                          color: clr_gradient_3,
                        ),
                        labelColor: clr_white,
                        unselectedLabelColor: clr_white,
                        tabs: [
                          Tab(
                            child: Text(
                              TAB_1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: fontSize_9,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'open_sans',
                                height: lineHeight_1_2,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              TAB_2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: fontSize_9,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'open_sans',
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              TAB_3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: fontSize_9,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'open_sans',
                                height: lineHeight_1_2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  FirstTab(),
                  if(controller.textController.text.isEmpty)...[
                    SecondsTab(),
                  ]else...[
                    Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: height_72,
                              child: Stack(
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
                                          return Container(
                                            margin: EdgeInsets.only(
                                              top: height_8,
                                            ),
                                            color: Colors.white,
                                            padding: EdgeInsets.only(
                                              top: height_12,
                                              left: width_12,
                                              right: width_12,
                                            ),
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
                                                        onTap: () => Navigator.pop(context),
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
                                                    margin: EdgeInsets.only(
                                                      top: height_16,
                                                      bottom: height_8,
                                                    ),
                                                    height: height_28,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(border_24),
                                                          border: Border.all(
                                                            width: 0.5,
                                                            color: clr_black12,
                                                          )),
                                                      child: TextField(
                                                        maxLines: 1,
                                                        style: TextStyle(fontSize: fontSize_12),
                                                        textAlignVertical: TextAlignVertical.center,
                                                        decoration: InputDecoration(
                                                          filled: true,
                                                          prefixIcon: Icon(
                                                            Icons.search,
                                                            color: clr_black12,
                                                            size: fontSize_20,
                                                          ),
                                                          border: OutlineInputBorder(
                                                              borderSide: BorderSide.none,
                                                              borderRadius: BorderRadius.all(Radius.circular(
                                                                border_16,
                                                              ))),
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(
                                                              width: 0.5,
                                                              color: clr_black12,
                                                            ),
                                                          ),
                                                          fillColor: clr_white,
                                                          contentPadding: EdgeInsets.zero,
                                                          hintText: SEARCH,
                                                          hintStyle: TextStyle(
                                                            fontSize: fontSize_11,
                                                            fontFamily: 'open_sans',
                                                            fontWeight: FontWeight.w500,
                                                            color: clr_black12,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  ListBank(
                                                      list: listBanks,
                                                      onTapElement: (e) {
                                                        controller.log(e.title!, e.image!, e.subTitle!);
                                                        Navigator.pop(context);
                                                      },
                                                      icon: Icons.account_balance_wallet_rounded),
                                                ]),
                                          );
                                        },
                                      );
                                    },
                                    child: TextFieldTransFerTab2(
                                      enabled: false,
                                      labelText: TITLE_43,
                                      suffixIcon: Icons.arrow_drop_down_sharp,
                                      title: controller.title,
                                      subfix: controller.image,
                                      textEditingController: controller.textController,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: width_16,
                                    child: Text(
                                      controller.subTitle ?? '',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: fontSize_9,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'open_sans',
                                        height: lineHeight_1_2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: height_4,
                              color: clr_f5f5f5,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: width_16,
                                right: width_16,
                                top: height_8,
                              ),
                              padding: EdgeInsets.only(
                                top: height_10,
                                bottom: height_10,
                              ),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: clr_f5f5f5,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Chuyển tiền nhanh \n',
                                      style: TextStyle(
                                        fontSize: fontSize_9,
                                        color: clr_black,
                                        fontFamily: 'open_sans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Chuyển tiền 24/7 là dịch vụ chuyển nhanh \n',
                                          style: TextStyle(
                                            fontSize: fontSize_9,
                                            color: clr_black,
                                            fontFamily: 'open_sans',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        WidgetSpan(
                                          child: Container(
                                            height: height_11,
                                            width: width_40,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(image_napas),
                                                )),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' hoặc song phương',
                                          style: TextStyle(
                                            fontSize: fontSize_9,
                                            color: clr_black,
                                            fontFamily: 'open_sans',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Switch(
                                    value: controller.isSwitched,
                                    activeColor: PRIMARY_COLOR,
                                    onChanged: (value) {
                                      controller.toggle();
                                      // controller.isSwitched = value;
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: width_16,
                                right: width_16,
                                top: height_12,
                              ),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                enabled: false,
                                onTap: () {},
                                style: TextStyle(
                                  fontSize: fontSize_12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'open_sans',
                                ),
                                decoration: InputDecoration(
                                  labelText: TITLE_67,
                                  suffixIcon: InkWell(
                                    onTap: () => Get.toNamed("/contacts_manager", arguments: ''),
                                    child: Icon(
                                      Icons.account_box_outlined,
                                      size: fontSize_15,
                                      color: clr_black54,
                                    ),
                                  ),
                                  suffixIconColor: clr_black54,
                                  labelStyle: TextStyle(
                                    fontSize: fontSize_11,
                                    color: clr_black54,
                                    fontFamily: 'open_sans',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  disabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: clr_black12),
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: PRIMARY_COLOR),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: !controller.isSwitched,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: width_16,
                                  right: width_16,
                                  top: height_12,
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  enabled: false,
                                  onTap: () {},
                                  style: TextStyle(
                                    fontSize: fontSize_12,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'open_sans',
                                  ),
                                  decoration: InputDecoration(
                                    labelText: TITLE_39,
                                    suffixIconColor: clr_black54,
                                    labelStyle: TextStyle(
                                      fontSize: fontSize_11,
                                      color: clr_black54,
                                      fontFamily: 'open_sans',
                                      fontWeight: FontWeight.w500,
                                    ),
                                    disabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: clr_black12),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: PRIMARY_COLOR),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                  // controller.title == ''
                  //     ?  Container(
                  //     child: Column(
                  //       children: [
                  //         SizedBox(
                  //           height: height_72,
                  //           child: Stack(
                  //             children: [
                  //               InkWell(
                  //                 onTap: () {
                  //                   showModalBottomSheet<void>(
                  //                     context: context,
                  //                     isScrollControlled: true,
                  //                     shape: RoundedRectangleBorder(
                  //                       borderRadius: BorderRadius.vertical(
                  //                         top: Radius.circular(25.r),
                  //                       ),
                  //                     ),
                  //                     builder: (BuildContext context) {
                  //                       return Container(
                  //                         margin: EdgeInsets.only(
                  //                           top: height_8,
                  //                         ),
                  //                         color: Colors.white,
                  //                         padding: EdgeInsets.only(
                  //                           top: height_12,
                  //                           left: width_12,
                  //                           right: width_12,
                  //                         ),
                  //                         height: Get.size.height / 1.05,
                  //                         child: Column(
                  //                             mainAxisAlignment: MainAxisAlignment.start,
                  //                             mainAxisSize: MainAxisSize.min,
                  //                             children: [
                  //                               Row(
                  //                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                                 children: [
                  //                                   Text(
                  //                                     TITLE_43,
                  //                                     style: TextStyle(
                  //                                       fontSize: fontSize_12,
                  //                                       fontWeight: FontWeight.w600,
                  //                                     ),
                  //                                   ),
                  //                                   InkWell(
                  //                                     onTap: () => Navigator.pop(context),
                  //                                     child: Text(
                  //                                       CANCEL,
                  //                                       style: TextStyle(
                  //                                         fontSize: fontSize_12,
                  //                                         color: PRIMARY_COLOR,
                  //                                         fontWeight: FontWeight.w600,
                  //                                       ),
                  //                                     ),
                  //                                   ),
                  //                                 ],
                  //                               ),
                  //                               Container(
                  //                                 margin: EdgeInsets.only(
                  //                                   top: height_16,
                  //                                   bottom: height_8,
                  //                                 ),
                  //                                 height: height_28,
                  //                                 child: Container(
                  //                                   decoration: BoxDecoration(
                  //                                       borderRadius: BorderRadius.circular(border_24),
                  //                                       border: Border.all(
                  //                                         width: 0.5,
                  //                                         color: clr_black12,
                  //                                       )),
                  //                                   child: TextField(
                  //                                     maxLines: 1,
                  //                                     style: TextStyle(fontSize: fontSize_12),
                  //                                     textAlignVertical: TextAlignVertical.center,
                  //                                     decoration: InputDecoration(
                  //                                       filled: true,
                  //                                       prefixIcon: Icon(
                  //                                         Icons.search,
                  //                                         color: clr_black12,
                  //                                         size: fontSize_20,
                  //                                       ),
                  //                                       border: OutlineInputBorder(
                  //                                           borderSide: BorderSide.none,
                  //                                           borderRadius: BorderRadius.all(Radius.circular(
                  //                                             border_16,
                  //                                           ))),
                  //                                       enabledBorder: UnderlineInputBorder(
                  //                                         borderSide: BorderSide(
                  //                                           width: 0.5,
                  //                                           color: clr_black12,
                  //                                         ),
                  //                                       ),
                  //                                       fillColor: clr_white,
                  //                                       contentPadding: EdgeInsets.zero,
                  //                                       hintText: SEARCH,
                  //                                       hintStyle: TextStyle(
                  //                                         fontSize: fontSize_11,
                  //                                         fontFamily: 'open_sans',
                  //                                         fontWeight: FontWeight.w500,
                  //                                         color: clr_black12,
                  //                                       ),
                  //                                     ),
                  //                                   ),
                  //                                 ),
                  //                               ),
                  //                               ListBank(
                  //                                   list: listBanks,
                  //                                   onTapElement: (e) {
                  //                                     controller.log(e.title!, e.image!, e.subTitle!);
                  //                                     Navigator.pop(context);
                  //                                   },
                  //                                   icon: Icons.account_balance_wallet_rounded),
                  //                             ]),
                  //                       );
                  //                     },
                  //                   );
                  //                 },
                  //                 child: TextFieldTransFerTab2(
                  //                   enabled: false,
                  //                   labelText: TITLE_43,
                  //                   suffixIcon: Icons.arrow_drop_down_sharp,
                  //                   title: controller.title,
                  //                   subfix: controller.image,
                  //                   textEditingController: controller.textController,
                  //                 ),
                  //               ),
                  //               Positioned(
                  //                 bottom: 0,
                  //                 left: width_16,
                  //                 child: Text(
                  //                   controller.subTitle ?? '',
                  //                   textAlign: TextAlign.center,
                  //                   style: TextStyle(
                  //                     fontSize: fontSize_9,
                  //                     color: Colors.black,
                  //                     fontWeight: FontWeight.w500,
                  //                     fontFamily: 'open_sans',
                  //                     height: lineHeight_1_2,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Container(
                  //           width: MediaQuery.of(context).size.width,
                  //           height: height_4,
                  //           color: clr_f5f5f5,
                  //         ),
                  //         Container(
                  //           margin: EdgeInsets.only(
                  //             left: width_16,
                  //             right: width_16,
                  //             top: height_8,
                  //           ),
                  //           padding: EdgeInsets.only(
                  //             top: height_10,
                  //             bottom: height_10,
                  //           ),
                  //           width: MediaQuery.of(context).size.width,
                  //           decoration: BoxDecoration(
                  //             color: clr_f5f5f5,
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //             children: [
                  //               RichText(
                  //                 text: TextSpan(
                  //                   text: 'Chuyển tiền nhanh \n',
                  //                   style: TextStyle(
                  //                     fontSize: fontSize_9,
                  //                     color: clr_black,
                  //                     fontFamily: 'open_sans',
                  //                     fontWeight: FontWeight.w600,
                  //                   ),
                  //                   children: [
                  //                     TextSpan(
                  //                       text: 'Chuyển tiền 24/7 là dịch vụ chuyển nhanh \n',
                  //                       style: TextStyle(
                  //                         fontSize: fontSize_9,
                  //                         color: clr_black,
                  //                         fontFamily: 'open_sans',
                  //                         fontWeight: FontWeight.w500,
                  //                       ),
                  //                     ),
                  //                     WidgetSpan(
                  //                       child: Container(
                  //                         height: height_11,
                  //                         width: width_40,
                  //                         decoration: BoxDecoration(
                  //                             image: DecorationImage(
                  //                               image: AssetImage(image_napas),
                  //                             )),
                  //                       ),
                  //                     ),
                  //                     TextSpan(
                  //                       text: ' hoặc song phương',
                  //                       style: TextStyle(
                  //                         fontSize: fontSize_9,
                  //                         color: clr_black,
                  //                         fontFamily: 'open_sans',
                  //                         fontWeight: FontWeight.w500,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ),
                  //               Switch(
                  //                 value: controller.isSwitched,
                  //                 activeColor: PRIMARY_COLOR,
                  //                 onChanged: (value) {
                  //                   controller.toggle();
                  //                   // controller.isSwitched = value;
                  //                 },
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: EdgeInsets.only(
                  //             left: width_16,
                  //             right: width_16,
                  //             top: height_12,
                  //           ),
                  //           child: TextField(
                  //             keyboardType: TextInputType.number,
                  //             enabled: false,
                  //             onTap: () {},
                  //             style: TextStyle(
                  //               fontSize: fontSize_12,
                  //               fontWeight: FontWeight.w600,
                  //               fontFamily: 'open_sans',
                  //             ),
                  //             decoration: InputDecoration(
                  //               labelText: TITLE_67,
                  //               suffixIcon: InkWell(
                  //                 onTap: () => Get.toNamed("/contacts_manager", arguments: ''),
                  //                 child: Icon(
                  //                   Icons.account_box_outlined,
                  //                   size: fontSize_15,
                  //                   color: clr_black54,
                  //                 ),
                  //               ),
                  //               suffixIconColor: clr_black54,
                  //               labelStyle: TextStyle(
                  //                 fontSize: fontSize_11,
                  //                 color: clr_black54,
                  //                 fontFamily: 'open_sans',
                  //                 fontWeight: FontWeight.w500,
                  //               ),
                  //               disabledBorder: const UnderlineInputBorder(
                  //                 borderSide: BorderSide(color: clr_black12),
                  //               ),
                  //               focusedBorder: const UnderlineInputBorder(
                  //                 borderSide: BorderSide(color: PRIMARY_COLOR),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Visibility(
                  //           visible: !controller.isSwitched,
                  //           child: Padding(
                  //             padding: EdgeInsets.only(
                  //               left: width_16,
                  //               right: width_16,
                  //               top: height_12,
                  //             ),
                  //             child: TextField(
                  //               keyboardType: TextInputType.number,
                  //               enabled: false,
                  //               onTap: () {},
                  //               style: TextStyle(
                  //                 fontSize: fontSize_12,
                  //                 fontWeight: FontWeight.w600,
                  //                 fontFamily: 'open_sans',
                  //               ),
                  //               decoration: InputDecoration(
                  //                 labelText: TITLE_39,
                  //                 suffixIconColor: clr_black54,
                  //                 labelStyle: TextStyle(
                  //                   fontSize: fontSize_11,
                  //                   color: clr_black54,
                  //                   fontFamily: 'open_sans',
                  //                   fontWeight: FontWeight.w500,
                  //                 ),
                  //                 disabledBorder: const UnderlineInputBorder(
                  //                   borderSide: BorderSide(color: clr_black12),
                  //                 ),
                  //                 focusedBorder: const UnderlineInputBorder(
                  //                   borderSide: BorderSide(color: PRIMARY_COLOR),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ))
                  //     :  SecondsTab(),
                  LastTab(),
                ],
              ),
            );
          },
        ));
  }
}
