import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../controller/add_contacts_controller.dart';
import '../view/add_contacts_page.dart';

class LabeledRadio extends StatelessWidget {
  LabeledRadio({
    super.key,
    required this.value,
    required this.title,
    required this.isFree,
  });

  final String value;
  String? title;
  final bool isFree;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddContactsController>(builder: (buttonController) {
      return InkWell(
        onTap: () {
          buttonController.setOrderType(value);
          Navigator.pop(context);
          buttonController.title = title!;
          print(title);
          print(value);
        },
        child: Row(
          children: [
            Radio(
              value: value,
              groupValue: buttonController.orderType,
              onChanged: (String? value) {},
              activeColor: PRIMARY_COLOR,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title ?? '',
              style: TextStyle(
                fontSize: fontSize_9,
                fontWeight: FontWeight.w600,
                fontFamily: 'open_sans',
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            // Text('(${(value == 'take_away' || isFree) ? 'free' : amount != -1 ? '\$${amount / 10}' : 'calculating'})')
          ],
        ),
      );
    });
  }
}
