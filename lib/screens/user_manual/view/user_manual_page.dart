import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/screens/user_manual/view/support_question_screen.dart';

import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../components/app_bar/app_bar_component.dart';

class UserManualPage extends StatelessWidget {
  const UserManualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: TITLE_77,
        callback: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(SupportQuestion());
              },
                child: Text("aaaa"))
          ],
        ),
      ),
    );
  }
}
