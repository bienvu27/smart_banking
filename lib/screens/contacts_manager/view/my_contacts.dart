import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/style.dart';

class MyContacts extends StatefulWidget {
  const MyContacts({Key? key}) : super(key: key);

  @override
  State<MyContacts> createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {
  List<Contact>? contacts;

  @override
  void initState() {
    super.initState();
    getContact();
  }

  void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      contacts = await FlutterContacts.getContacts(
          withProperties: true, withPhoto: true);
      print(contacts);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return contacts == null
        ? Container(
            height: MediaQuery.of(context).size.height,
            color: clr_white,
          )
        : Container(
            color: clr_white,
            child: ListView.builder(
                itemCount: contacts!.length,
                itemBuilder: (context, index) {
                  Uint8List? image = contacts![index].photo;
                  String num = (contacts![index].phones.isNotEmpty)
                      ? (contacts![index].phones.first.number)
                      : "--";
                  return ListTile(
                    leading: (contacts![index].photo == null)
                        ? const CircleAvatar(child: Icon(Icons.person))
                        : CircleAvatar(backgroundImage: MemoryImage(image!)),
                    title: Text(
                        "${contacts![index].name.first} ${contacts![index].name.last}"),
                    subtitle: Text(num),
                    onTap: () {},
                  );
                }),
          );
  }
}
