import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/module/register/view/components/singing_character.dart';

import '../../controller/register_controller.dart';
import '../../model/group_model.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _value2 = 0;
  final List<GroupModel> _group = [
    GroupModel(
        text: "Căn cước công dân/Chứng minh nhân dân",
        index: 1,
        selected: true),
    GroupModel(text: "Căn cước công nhân gắn chíp", index: 2, selected: false),
    GroupModel(text: "Hộ chiếu", index: 3, selected: false),
  ];

  Widget makeRadioTiles() {
    List<Widget> list = [];

    for (int i = 0; i < _group.length; i++) {
      list.add(Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: RadioListTile(
          selectedTileColor: Colors.white,
          tileColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          value: _group[i].index,
          groupValue: _value2,
          selected: _group[i].selected!,
          onChanged: (val) {
            setState(() {
              for (int i = 0; i < _group.length; i++) {
                _group[i].selected = false;
              }
              _value2 = val!;
              _group[i].selected = true;
            });
          },
          activeColor: Colors.purple,

          title: Text(
            ' ${_group[i].text}',
            style: TextStyle(
                fontSize: 13,
                color: _group[i].selected! ? Colors.black : Colors.grey,
                fontWeight:
                    _group[i].selected! ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ));
    }

    Column column = Column(
      children: list,
    );
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [makeRadioTiles()],
      ),
    );
  }
}
