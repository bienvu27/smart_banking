import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/register_controller.dart';

class RegisterInformation extends StatefulWidget {
  const RegisterInformation({Key? key}) : super(key: key);

  @override
  State<RegisterInformation> createState() => _RegisterInformationState();
}

class _RegisterInformationState extends State<RegisterInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Thông tin đăng ký',
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black),
        ),
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          width: Get.size.width,
          height: Get.size.height,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Họ và tên",
                      labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Số tài khoản",
                      labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: const [
                      TextField(
                          enabled: false,
                          obscureText: false,
                          decoration: InputDecoration(
                              labelText: "Ngày sinh",
                              labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)))),
                      Positioned(
                          right: 5,
                          child: Icon(
                            Icons.date_range,
                            color: Colors.blue,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Số CMND/  CCCD/ HC",
                      labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Số điện thoại đăng nhập",
                      labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Số điện thoại nhận OTP",
                      labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Stack(
                        alignment: Alignment.center,
                        children: const [
                          TextField(
                              enabled: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                  labelText: "Chọn gói dịch vụ",
                                  labelStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  disabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey)))),
                          Positioned(
                              right: 5,
                              child: Icon(
                                Icons.arrow_drop_down_rounded,
                                size: 35,
                                color: Colors.black54,
                              )),
                        ],
                      ),
                    ),
                    const Positioned(
                        bottom: 1,
                        right: 1,
                        child: Text(
                          'Thông tin hạn mức',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: const [
                      TextField(
                          enabled: true,
                          obscureText: false,
                          decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)))),
                      Positioned(
                          right: 5,
                          child: Text('(Không bắt buộc)', style: TextStyle(color: Colors.black12),))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: const [
                      TextField(
                          keyboardType: TextInputType.number,
                          enabled: true,
                          obscureText: false,
                          decoration: InputDecoration(
                              labelText: "Mã cán bộ tiếp thị",
                              labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)))),
                      Positioned(
                          right: 5,
                          child: Text('(Không bắt buộc)', style: TextStyle(color: Colors.black12),))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: const [
                      TextField(
                          keyboardType: TextInputType.number,
                          enabled: true,
                          obscureText: false,
                          decoration: InputDecoration(
                              labelText: "Số điện thoại người giới thiệu",
                              labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)))),
                      Positioned(
                          right: 5,
                          child: Text('(Không bắt buộc)', style: TextStyle(color: Colors.black12),))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Stack(
                    alignment: Alignment.center,
                    children: const [
                      TextField(
                          enabled: false,
                          obscureText: false,
                          decoration: InputDecoration(
                              labelText: "Chọn mã giới thiệu đặc trưng",
                              labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)))),
                      Positioned(
                          right: 5,
                          child: Icon(
                            Icons.arrow_drop_down_rounded,
                            size: 35,
                            color: Colors.black54,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.9),
              spreadRadius: 3,
              blurRadius: 1,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetBuilder<RegisterPageController>(
                  init: RegisterPageController(),
                  builder: (controller) {
                    return Checkbox(
                      value: controller.isChecked,
                      onChanged: (value) {
                        controller.toggleCheckbox(controller.isChecked);
                      },
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      tristate: false,
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  width: Get.size.width / 1.2,
                  child: RichText(
                    text: const TextSpan(
                      text: 'Tôi đã đọc và đồng ý với ',
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                      children: [
                        TextSpan(
                          text:
                          'điều kiện và điều khoản ',
                          style: TextStyle(
                              fontSize: 15, color: Colors.blue),
                        ),
                        TextSpan(
                          text: 'đăng ký dịch vụ BIDV.',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  height: 50,
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
    );
  }
}
