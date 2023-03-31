import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/resources/strings.dart';
import '../../../../core/style/colors.dart';
import '../../model/group_model.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _value2 = 1;
  final List<GroupModel> _group = [
    GroupModel(
        text: TITLE_19,
        index: 1,
        selected: true),
    GroupModel(text: TITLE_20, index: 2, selected: false),
    GroupModel(text: PASSPORT, index: 3, selected: false),
  ];

  Widget makeRadioTiles() {
    List<Widget> list = [];

    for (int i = 0; i < _group.length; i++) {
      list.add(Container(
        margin: EdgeInsets.only(bottom: 10.h),
        child: RadioListTile(
          selectedTileColor: Colors.white,
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
              side: const BorderSide(
                  // color: _group[i].selected! ? MyColor.PRIMARY_COLOR_BLUE : Colors.black12
                  color: clr_black12
              )),
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
                fontSize: 13.sp,
                color:  clr_black,
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
      padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w, bottom: 10.h),
      child: Column(
        children: [makeRadioTiles()],
      ),
    );
  }
}
