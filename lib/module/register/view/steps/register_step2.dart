import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_banking/module/register/view/steps/register_step3.dart';

class RegisterStep2Page extends StatelessWidget {
  const RegisterStep2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          '',
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
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: Get.size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                width: Get.size.width,
                child: SizedBox(
                  width: Get.size.width / 1.5,
                  child: const Text(
                    'Cùng BIDV thử nghiệm công nghệ định danh số hoàn toàn mới',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Image.network(
                'https://cdni.iconscout.com/illustration/premium/thumb/face-id-security-3887131-3240391.png',
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: SizedBox(
                  width: Get.size.width,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: Get.size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.av_timer),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: Get.size.width / 1.3,
                                  child: const Text(
                                    'Mở tài khoản thanh toán dễ dàng và nhanh chóng',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: Get.size.width / 1.2,
                                  height: 1, // Thickness
                                  color: Colors.black12,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: Get.size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon((Icons.phone_iphone),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: Get.size.width / 1.3,
                                  child: const Text(
                                    'Đăng ký dịch vụ ngân hàng điện tử SmartBanking thoả sức giao dịch trực tuyến',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: Get.size.width / 1.2,
                                  height: 1, // Thickness
                                  color: Colors.black12,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: Get.size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.change_circle_outlined),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: Get.size.width / 1.3,
                                  child: const Text(
                                    'Trải nghiệm mới cùng BIDV với thật nhiều ưu đã đang chờ đón',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: Get.size.width / 1.2,
                                  height: 1, // Thickness
                                  color: Colors.black12,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 110,
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
        child: InkWell(
          onTap: ()=> Get.to(const RegisterStep3Page()),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                  'Đăng ký ngay',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
