import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/strings/strings.dart';
import '../style/colors.dart';
import '../style/size.dart';

class PinCodeBottomSheet extends StatelessWidget {
  const PinCodeBottomSheet({Key? key, required this.controllerTextField, required this.callBack}) : super(key: key);
  final TextEditingController controllerTextField;
  final VoidCallback callBack;
  @override
  Widget build(BuildContext context) {

    return Container(
        margin: EdgeInsets.only(
          left: width_8,
          right: width_8,
          top: height_8,
        ),
        height: Get.size.height / 1.2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ENTER_PIN,
                    style: TextStyle(
                      fontFamily: 'open_sans',
                      fontSize: fontSize_12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      CANCEL,
                      style: TextStyle(
                        fontSize: fontSize_12,
                        color: PRIMARY_COLOR,
                        fontFamily: 'open_sans',
                        fontWeight: FontWeight.w600,

                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: controllerTextField,
                onEditingComplete: callBack,
                style: TextStyle(
                  fontSize: fontSize_11,
                  color: clr_black,
                  fontFamily: 'open_sans',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  labelText: ENTER_PIN,
                  suffixIconColor: clr_black54,
                  labelStyle: TextStyle(
                    fontSize: fontSize_11,
                    color: clr_black,
                    fontFamily: 'open_sans',
                    fontWeight: FontWeight.w500,
                  ),)
              )
            ],
          ),
        ));
  }
}
