import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/list_service_model.dart';

class ListService extends StatelessWidget {
  const ListService({
    super.key,
    required this.listService,
  });

  final List<ListServiceModel> listService;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Column(
        children: listService.map((e) {
          return Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
            width: Get.size.width,
            height: 120,
            decoration: BoxDecoration(
                color: const Color(0xffeaf7ff),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.network(
                        e.image ?? '',
                        width: 40,
                        height: 40,
                      ),
                      Container(
                        width: Get.size.width / 1.5,
                        margin: const EdgeInsets.only(left: 15, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.title ?? '',
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              e.description ?? '',
                              maxLines: 3,
                              style: const TextStyle(height: 1.5),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        width: 90,
                        height: 20,
                        decoration: BoxDecoration(
                            color: const Color(0xffd7eeff),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('${e.numberService}',
                                style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                            const Text('dịch vụ',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500)),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colors.blue,
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
