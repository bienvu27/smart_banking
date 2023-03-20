import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/module/register/view/components/singing_character.dart';

import '../../controller/register_controller.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  SingingCharacter _character = SingingCharacter.lafayette;

  int? selectdRadioTile;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectdRadioTile = 0;
  }

  setSelectRadioTile(int val){
    setState(() {
      selectdRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [

        ],
      ),
    );
  }
}
