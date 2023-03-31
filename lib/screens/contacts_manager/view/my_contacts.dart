import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';

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
                        ? CircleAvatar(
                            backgroundColor: clr_bg_text,
                            radius: border_16,
                            child: Icon(
                              Icons.person,
                              size: 35.spMax,
                              color: clr_d9dbda,
                            ))
                        : CircleAvatar(backgroundImage: MemoryImage(image!)),
                    title: Text(
                        "${contacts![index].name.first} ${contacts![index].name.last}",
                        style: TextStyle(
                            fontSize: fontSize_10, fontWeight: FontWeight.w600)),
                    subtitle: Text(num,
                        style: TextStyle(
                            fontSize: fontSize_10,
                            fontWeight: FontWeight.w600,
                            color: clr_black)),
                    onTap: () {},
                  );
                }),
          );
  }
}
