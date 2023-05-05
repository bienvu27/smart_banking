import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/strings.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../controller/register_controller.dart';
import '../../model/group_model.dart';

class RadioButtonBottomSheet extends StatefulWidget {
  const RadioButtonBottomSheet({Key? key}) : super(key: key);

  @override
  State<RadioButtonBottomSheet> createState() => _RadioButtonBottomSheetState();
}

class _RadioButtonBottomSheetState extends State<RadioButtonBottomSheet> {
  final controller = Get.put(RegisterPageController());
  // int _value2 = 1;
  final List<GroupModel> _group = [
    GroupModel(text: TITLE_19, index: 0, selected: false),

  ];

  Widget makeRadioTiles() {
    List<Widget> list = [];

    for (int i = 0; i < _group.length; i++) {
      list.add(Container(
        margin: EdgeInsets.only(bottom: height_8),
        decoration: BoxDecoration(
          color: clr_bg_text,
          borderRadius: BorderRadius.circular(border_16),
          border: Border.all(color: clr_black54, width: 0.5)
        ),
        child: RadioListTile(
          selectedTileColor: clr_white,
          tileColor: clr_white,
          controlAffinity: ListTileControlAffinity.trailing,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(border_16),
              side: BorderSide(
                  // color: _group[i].selected! ? MyColor.PRIMARY_COLOR_BLUE : Colors.black12

                  color: clr_black54, width: 0.5)),
          value: _group[i].index,
          groupValue: controller.value2,
          selected: _group[i].selected!,
          onChanged: (val) {
            Navigator.pop(context);
            String title = "Chính sách miễn phí mới";
            print('Test');

            controller.selectService(title);
            setState(() {
              for (int i = 0; i < _group.length; i++) {
                _group[i].selected = false;
              }
              controller.value2 = val!;
              _group[i].selected = true;

            });
          },
          activeColor: clr_6dd7ce,
          title:  RichText(
            text: TextSpan(
              text: '$TITLE_85 \n',
              style: TextStyle(
                fontSize: fontSize_11,
                color: PRIMARY_COLOR,
                fontWeight: FontWeight.w600
              ),
              children: [
                TextSpan(
                    text: '$TITLE_86 \n \n',
                    style: TextStyle(
                        fontSize: fontSize_10,
                        color: clr_black38,
                        height: 1.5,
                        fontWeight: FontWeight.w400
                    ),
                ),
                TextSpan(
                  text: '$TITLE_87 \n \n',
                  style: TextStyle(
                      fontSize: fontSize_10,
                      color: clr_black38,
                      height: 1.5,
                      fontWeight: FontWeight.w400
                  ),
                ),
                TextSpan(
                  text: '$TITLE_88 \n \n',
                  style: TextStyle(
                      fontSize: fontSize_10,
                      color: clr_black38,
                      height: 1.5,
                      fontWeight: FontWeight.w400
                  ),
                ),
                TextSpan(
                  text: '$TITLE_89 \n \n',
                  style: TextStyle(
                      fontSize: fontSize_10,
                      color: clr_black38,
                      height: 1.5,
                      fontWeight: FontWeight.w400
                  ),
                ),
                TextSpan(
                  text: '$TITLE_90 \n \n',
                  style: TextStyle(
                      fontSize: fontSize_10,
                      color: clr_black38,
                      height: 1.5,
                      fontWeight: FontWeight.w400
                  ),
                ),
                TextSpan(
                  text: '$TITLE_91 \n \n',
                  style: TextStyle(
                      fontSize: fontSize_10,
                      color: clr_black38,
                      height: 1.5,
                      fontWeight: FontWeight.w400
                  ),
                ),
                TextSpan(
                  text: '$TITLE_92 \n \n',
                  style: TextStyle(
                      fontSize: fontSize_10,
                      color: clr_black54,
                      height: 1.5,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ])),
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
