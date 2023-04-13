import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/components/app_bar/app_bar_component.dart';

import '../../../../../../core/resources/strings.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/style/size.dart';
import '../../../../../../fake_data/data_fake_home.dart';
import '../../../../controller/transfer_controller.dart';
import 'list_bank.dart';
import 'list_contacts.dart';

class ContactsManager extends StatelessWidget {
  ContactsManager({Key? key}) : super(key: key);
  final controller = Get.put(TransferController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        title: CONTACTS_MANAGER,
        colorIcon: Colors.black,
        bgColor: Colors.white,
        colorTitle: Colors.black,
        callback: () => Get.back(),
        iconAction: Icons.home_filled,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: height_16,
                bottom: height_8,
                left: width_16,
                right: width_16,
              ),
              height: height_28,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(border_24),
                    border: Border.all(
                      width: 1,
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
            ListContacts(
              list: listContacts2,
              callBack: (e){
                controller.contactsManager(e.numberAccount, e.name,);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
