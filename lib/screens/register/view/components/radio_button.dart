import 'package:flutter/material.dart';
import '../../../../res/strings/strings.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../model/group_model.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _value2 = 1;
  final List<GroupModel> _group = [
    GroupModel(text: TITLE_19, index: 1, selected: true),
    GroupModel(text: TITLE_20, index: 2, selected: false),
    GroupModel(text: PASSPORT, index: 3, selected: false),
  ];

  Widget makeRadioTiles() {
    List<Widget> list = [];

    for (int i = 0; i < _group.length; i++) {
      list.add(Container(
        margin: EdgeInsets.only(bottom: height_8),
        child: RadioListTile(
          selectedTileColor: clr_white,
          tileColor: clr_white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(border_8),
              side: const BorderSide(
                  // color: _group[i].selected! ? MyColor.PRIMARY_COLOR_BLUE : Colors.black12
                  color: clr_black12)),
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
          activeColor: clr_6dd7ce,
          title: Text(
            ' ${_group[i].text}',
            style: TextStyle(
                fontSize: fontSize_10,
                color: clr_black,
                fontWeight: _group[i].selected! ? FontWeight.bold : FontWeight.normal,),
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
      padding: EdgeInsets.only(
        top: height_8,
        left: width_8,
        right: width_8,
        bottom: height_8,
      ),
      child: Column(
        children: [makeRadioTiles()],
      ),
    );
  }
}
