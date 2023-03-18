import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoverWidget extends StatelessWidget {
  const CoverWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 590,
      child: Stack(
        children: [
          Image.network(
            'https://images2.thanhnien.vn/Uploaded/dieutrang-qc/2022_03_25/dai-dien-bidv-nhan-giai-thuong-ngan-hang-ban-le-tot-nhat-viet-nam-lan-thu-7-7164.jpg',
            fit: BoxFit.fill,
            height: 530,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Logo_BIDV.svg/2560px-Logo_BIDV.svg.png',
                      width: 100,
                      height: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: Get.size.width / 1.5,
                      height: 30,
                      child: TextField(
                        maxLines: 1,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          fillColor: Colors.white30,
                          filled: true,
                          prefixIcon: const Icon(Icons.search,
                              color: Colors.white30, size: 25),
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white70,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Positioned(
                                right: 7,
                                bottom: 0,
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black12),
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child:
                                  const Icon(Icons.menu, size: 12),
                                ))
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Chào buổi sáng!',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.white70),
                          ),
                          Text(
                            'Quý khách',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 1,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(
                            1, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Đăng nhập',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                      Text(
                        'Đăng ký',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.lightBlueAccent),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}