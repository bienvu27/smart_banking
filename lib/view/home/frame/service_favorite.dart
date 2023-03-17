import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/service_favorite_model.dart';

class ServiceFavorite extends StatelessWidget {
  const ServiceFavorite({
    super.key,
    required this.list,
  });

  final List<ServiceFavoriteModel> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Dịch vụ yêu thích',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'Tuỳ chỉnh',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue),
              ),
            ],
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.only(bottom: 20),
            child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: list.map((e) {
                  return SizedBox(
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.network(
                              e.image ?? '',
                              width: 60,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                              bottom: 5,
                              child: Container(
                                width: 30,
                                height: 0.1,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                      Colors.grey.withOpacity(0.9),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: Offset(0,
                                          5), // changes position of shadow
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          e.title ?? '',
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  );
                }).toList()),
          ),
          Container(
            width: Get.size.width,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffeafff),
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'Xem tất cả dịch vụ',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}