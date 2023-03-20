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
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
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
                            borderSide:
                                const BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.transparent),
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
                                      border: Border.all(color: Colors.black12),
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(Icons.menu, size: 12),
                                ))
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        offset:
                            const Offset(1, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                height: Get.size.height / 1.2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () => Navigator.pop(context),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: const BoxDecoration(
                                              color: Colors.black12,
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Icon(
                                              Icons.close,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Text(
                                                'EN',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Image.network(
                                                'https://cleandye.com/wp-content/uploads/2020/01/English-icon.png',
                                                width: 15,
                                                height: 15,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      width: 60,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                        color: Colors.black12,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.person,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: [
                                          const TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              labelText: "Số điện thoại",
                                              //babel text
                                              prefixIcon: Icon(
                                                Icons.phone,
                                                color: Colors.grey,
                                              ),
                                              labelStyle: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w400),
                                              disabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 20),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: const [
                                                TextField(
                                                    obscureText: true,
                                                    decoration: InputDecoration(
                                                        labelText: "Mật khẩu",
                                                        //babel text
                                                        prefixIcon: Icon(
                                                          Icons.lock,
                                                          color: Colors.grey,
                                                        ),
                                                        labelStyle: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                Colors.black54,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .blue),
                                                        ),
                                                        disabledBorder:
                                                            UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey)))),
                                                Positioned(
                                                    right: 5,
                                                    child: Text(
                                                      'Quên mật khẩu',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.blue),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      alignment: Alignment.center,
                                      width: Get.size.width,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue,
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
                                        'Đăng nhập',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 30),
                                      child: Column(
                                        children: const [
                                          Text(
                                            'Hướng dẫn chuyển đổi',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.blue),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Text(
                                            'Đăng ký',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: const Text(
                          'Đăng nhập',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                      const Text(
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
