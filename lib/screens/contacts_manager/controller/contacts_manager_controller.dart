import 'package:flutter/cupertino.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';

class ContactsManagerController extends GetxController {
  TextEditingController searchTextController = new TextEditingController();
  List<Contact> contacts = [];
  List<Contact> contactsSearch = [];

  void autoFillingWhenSearch(String text) {
    contactsSearch.clear();
    contacts.forEach((e) => contactsSearch.add(e));
    contactsSearch.removeWhere((e) => !(e.name.first + " " + e.name.last)
        .toUpperCase()
        .contains(text.toUpperCase()));
    if (text.isEmpty) {
      contactsSearch.clear();
      contacts.forEach((e) => contactsSearch.add(e));
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    contacts.addAll(Get.arguments);
    contactsSearch.addAll(Get.arguments);
    update();
  }
}
