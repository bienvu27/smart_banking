import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import '../../../../../core/resources/name_icon.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';
import '../../../controller/transfer_controller.dart';

class TextFieldTransFer extends StatelessWidget {
  TextFieldTransFer({super.key, required this.labelText, this.suffixIcon, required this.enabled, this.callback, this.title, this.textEditingController});

  final String labelText;
  IconData? suffixIcon;
  final bool? enabled;
  final String? title ;
  VoidCallback? callback;
  TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(
              left: width_16,
              right: width_16,
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              enabled: enabled,
              onTap: () {
                if(callback != null) {
                  callback!();
                }
              },
              controller: TextEditingController(text: title),

              style: TextStyle(
                fontSize: fontSize_12,
                fontWeight: FontWeight.w600,
                fontFamily: 'open_sans',
              ),
              decoration: InputDecoration(
                labelText: labelText,
                suffixIcon: InkWell(
                  onTap: () => Get.toNamed("/contacts_manager", arguments: ''),
                  child: Icon(
                    suffixIcon,
                    size: fontSize_15,
                    color: clr_black54,
                  ),
                ),
                suffixIconColor: clr_black54,
                labelStyle: TextStyle(
                  fontSize: fontSize_9,
                  color: clr_black54,
                  fontFamily: 'open_sans',
                  fontWeight: FontWeight.w600,
                ),
                disabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: clr_black12),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: PRIMARY_COLOR),
                ),
              ),
            ),
          );
  }
}
