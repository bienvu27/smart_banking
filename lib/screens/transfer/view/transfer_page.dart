import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/components/seconds_tab_isnotempty.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab1/first_tab.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab2/seconds_tab.dart';
import 'package:smart_banking/screens/transfer/view/tabs/tab3/last_tab.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/button/back_icon_button.dart';
import '../../components/button/button_component.dart';
import '../../components/dialog/custom_dialog_transfer.dart';
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
                        gradient: linearGradientButtom
                      ),
                      child: TabBar(
                        onTap: (index){
                          controller.checkIndex(index);
                          controller.setTitleDialog(index);
                        },
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
                          // color: clr_gradient_3,
                          color: clr_adb5bd,
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
                  FirstTab(controller: controller,),
                  if(controller.textController.text.isEmpty)...[
                    SecondsTab(),
                  ]else ...[
                    SecondsTabIsNotEmpty()
                  ],
                  LastTab(),
                ],
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
                    callback: (){;
                      if(controller.beneficiaryAccountController.text.isEmpty){
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) => CustomDialogTransfer(
                              title: controller.titleDialog ?? TITLE_69,
                              cancel: CANCEL2,
                              submit: CANCEL,
                              clickCallback: () {
                                Navigator.pop(context);
                              },
                            ));
                      }else{
                          Get.toNamed("/transaction_infor", arguments: '');
                      }

                    },
                  ),
                )
            );
          },
        ));
  }
}


