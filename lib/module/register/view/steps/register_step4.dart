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
                fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
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
                margin: const EdgeInsets.only(bottom: 10, top: 10),
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
        ),
        bottomNavigationBar: Container(
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 3,
                blurRadius: 1,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: Get.size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Color(0xff009bad),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: Get.size.width / 1.25,
                            child: const Text(
                              'Vui lòng sử dụng giấy tờ gốc (bản chính), còn hạn sử dụng',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: Get.size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Color(0xff009bad),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: Get.size.width / 1.25,
                            child: const Text(
                              'Chụp ảnh trong môi trường sáng đảm bảo rõ nét, không bị mờ loá, không bị mất góc',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      width: Get.size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Color(0xff009bad),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: Get.size.width / 1.25,
                            child: const Text(
                              'Khách hàng không sử dụng Giấy tờ tuỳ thân giả mạo, không chính chủ. Khách hàng chịu hoàn  toàn trách nhiệm trước pháp luật về thông tin Giấy tờ tuỳ thân cung cấp cho ngân hàng',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4341/4341131.png',
                                    width: 100,
                                    height: 80,
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 1,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                      child: const Icon(
                                        Icons.close,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 80,
                                child: Text(
                                  'Không chụp quá mờ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.redAccent, height: 1.5),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4341/4341131.png',
                                    width: 100,
                                    height: 80,
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 1,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                      child: const Icon(
                                        Icons.close,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 80,
                                child: Text(
                                  'Không chụp mất góc',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.redAccent, height: 1.5),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/4341/4341131.png',
                                    width: 100,
                                    height: 80,
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 1,
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 1, color: Colors.white)),
                                      child: const Icon(
                                        Icons.close,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 80,
                                child: Text(
                                  'Không chụp loá sáng',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.redAccent, height: 1.5),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      height: 60,
                      width: Get.size.width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff00a5ae),
                            Color(0xff00a8ae),
                            Color(0xff00a8ae),
                            Color(0xff0081ae),
                            Color(0xff006cad),
                          ],
                        ),
                      ),
                      child: const Text(
                        'Tiếp tục',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
