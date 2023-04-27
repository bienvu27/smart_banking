import 'package:flutter/cupertino.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';

import '../../../fake_data/data_fake_home.dart';
import '../../transfer/models/list_contacts_model.dart';

class ContactsManagerController extends GetxController {
  TextEditingController searchTextController = new TextEditingController();
  List<Contact> contacts = [];
  List<Contact> contactsSearch = [];
  List<ListContactsModel> listContactsSearch = [];

  void autoFillingWhenSearch(String text) {
    contactsSearch.clear();
    contactsSearch.addAll(contacts);
    contactsSearch.removeWhere((e) => !(e.name.first + " " + e.name.last)
        .toUpperCase()
        .contains(text.toUpperCase()));
    if (text.isEmpty) {
      contactsSearch.clear();
      contactsSearch.addAll(contacts);
    }

    listContactsSearch.clear();
    listContactsSearch.addAll(listContacts);
    listContactsSearch.removeWhere((e) => !e.name!.toUpperCase().contains(text.toUpperCase()));
    if (text.isEmpty) {
      listContactsSearch.clear();
      listContactsSearch.addAll(listContacts);
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    contacts.addAll(Get.arguments);
    contactsSearch.addAll(Get.arguments);
    listContactsSearch.addAll(listContacts);
    update();
  }
}
