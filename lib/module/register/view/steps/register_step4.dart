import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/register_controller.dart';
import '../components/radio_button.dart';

class RegisterStep4Page extends StatelessWidget {
  const RegisterStep4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String radioItem = '';
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff01bdae),
            Color(0xff01bdae),
            Color(0xff00acae),
            Color(0xff009bad),
            Color(0xff009baf),
          ],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text(
              'Chọn giấy tờ xác thực',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white),
            ),
            leading: InkWell(
              onTap: () => Get.back(),
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
                color: Colors.white,
              ),
            ),
            elevation: 0,
          ),
          body: Container(
            height: Get.size.height,
            color: Colors.transparent,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 40, top: 10),
                  alignment: Alignment.center,
                  width: Get.size.width,
                  child: SizedBox(
                    width: Get.size.width / 1.1,
                    child: const Text(
                      'Quý khách vui lòng chọn giấy tờ xác thực',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                const RadioButton(),
              ],
            ),
          )),
    );
  }
}
