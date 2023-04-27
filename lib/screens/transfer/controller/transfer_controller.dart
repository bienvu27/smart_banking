import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../../components/dialog/custom_dialog_transfer.dart';
import '../components/list_benef_account.dart';
import '../models/list_bank_model.dart';
import '../models/list_contacts_model.dart';

class TransferController extends GetxController {
  bool isSwitched = true;
  TabController? tabController;
  int? indexBenefAccountSelected;
  bool isSameOwner = false;
  String? titleDialog;
  int indexTabTransfer = 0;

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

  void showDialogBenef(BuildContext context) {
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
      showDialogBenef(context);
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
    indexTabTransfer = index;
    if(index == 0){
      titleDialog = TITLE_69;
    }else if(index == 1){
      titleDialog = TITLE_70;
    }else{
      titleDialog = TITLE_71;
    }
    update();
  }

  bool validateForm(BuildContext context) {
    if(indexTabTransfer == 0 && beneficiaryAccountController.text.isEmpty) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) => CustomDialogTransfer(
            title: titleDialog ?? TITLE_69,
            cancel: CANCEL2,
            submit: CANCEL,
            clickCallback: () {
              Navigator.pop(context);
            },
          ));
      return false;
    }
    return true;
  }

  TextEditingController searchController = TextEditingController();

  List<ListContactsModel> listContactsSameOwnerSearch = [];
  List<ListContactsModel> listContactsSearch = [];
  List<ListContactsModel> listContacts2Search = [];
  List<ListContactsModel> listContacts3Search = [];


  void autoFillingWhenSearch(String text) {
    listContactsSameOwnerSearch.clear();
    listContactsSameOwnerSearch.addAll(listContactsSameOwner);
    listContactsSameOwnerSearch.removeWhere((e) =>
    !e.name!.toUpperCase().contains(text.toUpperCase()));
    if (text.isEmpty) {
      listContactsSameOwnerSearch.clear();
      listContactsSameOwnerSearch.addAll(listContactsSameOwner);
    }

    listContactsSearch.clear();
    listContactsSearch.addAll(listContacts);
    listContactsSearch.removeWhere((e) =>
    !e.name!.toUpperCase().contains(text.toUpperCase()));
    if (text.isEmpty) {
      listContactsSearch.clear();
      listContactsSearch.addAll(listContacts);
    }

    update();
  }

  void autoFillingWhenSearch2(String text) {
    listContacts2Search.clear();
    listContacts2Search.addAll(listContacts2);
    listContacts2Search.removeWhere((e) =>
    !e.name!.toUpperCase().contains(text.toUpperCase()));
    if (text.isEmpty) {
      listContacts2Search.clear();
      listContacts2Search.addAll(listContacts2);
    }
    update();
  }

  void autoFillingWhenSearch3(String text) {
    listContacts3Search.clear();
    listContacts3Search.addAll(listContacts);
    listContacts3Search.removeWhere((e) =>
    !e.name!.toUpperCase().contains(text.toUpperCase()));
    if (text.isEmpty) {
      listContacts3Search.clear();
      listContacts3Search.addAll(listContacts);
    }
    update();
  }


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    isSameOwner = false;
    beneficiaryAccountController.clear();
    listContactsSameOwnerSearch.addAll(listContactsSameOwner);
    listContactsSearch.addAll(listContacts);
    listContacts2Search.addAll(listContacts2);
    listContacts3Search.addAll(listContacts);
    update();
  }

}