import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../components/list_benef_account.dart';

class TransferController extends GetxController {
  bool isSwitched = true;
  TabController? tabController;
  int? indexBenefAccountSelected;
  bool isSameOwner = false;
  String? titleDialog;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    isSameOwner = false;
    beneficiaryAccountController.clear();
    update();
  }

  TextEditingController beneficiaryAccountController = new TextEditingController();

  void toggle(){
    isSwitched = !isSwitched;
    update();
  }


  void chooseBenefAccountSelected(int index){
    this.indexBenefAccountSelected = index;
    beneficiaryAccountController.text = beneficiaryList.elementAt(index).account!;
    update();
  }

  void showDialog(BuildContext context) {
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
          height: Get.size.height / 2,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      TITLE_CHOOSE_BENEF,
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

                ListBenefAccount(
                    list: beneficiaryList,
                    onTapElement: (index) {
                      chooseBenefAccountSelected(index);
                      Navigator.pop(context);
                    },
                    selectedElementIndex: indexBenefAccountSelected,
                    icon: Icons.account_balance_wallet_rounded),
              ]),
        );
      },
    );
  }


  toggleSameOwner(BuildContext context, bool isSameOwner){
    beneficiaryAccountController.text = "";
    this.isSameOwner = isSameOwner;
    if(isSameOwner) {
      indexBenefAccountSelected = null;
      showDialog(context);
    }
    update();
  }

  TextEditingController textController = TextEditingController() ;
  TextEditingController textController2 = TextEditingController() ;
  String? title = '', image, subTitle;
  String? number, name;

  void log(String title, String image, subTitle){
    textController.text = title;
    this.image = image;
    this.title = title;
    this.subTitle = subTitle;
    print('ssss $title');
    print('xxxx $textController.text');
    update();
  }

  void contactsManager(String number, String name){
    textController2.text = number;
    this.number = number;
    this.name = name;
    update();
  }


  checkIndex(int index){
    if(index == 0){
      textController.clear();
      textController2.clear();
      this.image = '';
      this.title = '';
      this.name = '';
      this.number = '';
    }else if(index == 2){
      textController.clear();
      textController2.clear();
      this.image = '';
      this.title = '';
      this.name = '';
      this.number = '';
    }
    update();
  }
  setTitleDialog(int index){
    if(index == 0){
      titleDialog = TITLE_69;
    }else if(index == 1){
      titleDialog = TITLE_70;
    }else{
      titleDialog = TITLE_71;
    }
  }

}