import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'frame/cover_widget.dart';
import 'frame/grid_menu.dart';
import 'frame/service_favorite.dart';
import 'model/service_favorite_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final list = [
    ServiceFavoriteModel(
        image:
            'https://e7.pngegg.com/pngimages/15/364/png-clipart-computer-icons-person-user-group-icon-auto-part-rim-thumbnail.png',
        title: 'Smart Kids'),
    ServiceFavoriteModel(
        image: 'https://cdn-icons-png.flaticon.com/512/3702/3702999.png',
        title: 'Tặng quà'),
    ServiceFavoriteModel(
        image:
            'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png',
        title: 'Mở tài khoản chọn tên như ý'),
    ServiceFavoriteModel(
        image:
            'https://icons.veryicon.com/png/o/business/a-set-of-commercial-icons/money-transfer.png',
        title: 'Chuyển tiền ngoài BIDV đến số tài khoản'),
    ServiceFavoriteModel(
        image:
            'https://cdn4.iconfinder.com/data/icons/smart-phones-technologies/512/android-phone.png',
        title: 'Nạp tiền điện thoại'),
    ServiceFavoriteModel(
        image:
            'https://icon-library.com/images/save-money-icon-png/save-money-icon-png-9.jpg',
        title: 'Gửi tiết kiệm Online')
  ];

  List<String> images = [
    "https://bidv.com.vn/wps/wcm/connect/eaa9baff-9dde-4230-b284-5845ec0cf233/1/img.png?MOD=AJPERES&CVID=",
    "https://media.vneconomy.vn/w800/images/upload/2022/06/28/f576644e-8a90-4b1f-9216-ca0cd68310dd.jpg",
    "https://www.bidv.com.vn/smartbanking/grandsale2023/grandsale/bfb.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CoverWidget(),
            const SizedBox(
              height: 20,
            ),
            const GridMenu(),
            const SizedBox(
              height: 20,
            ),
            ServiceFavorite(list: list),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 150,
              child: PageView.builder(
                  itemCount: images.length,
                  pageSnapping: true,
                  itemBuilder: (context, pagePosition) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          images[pagePosition],
                          fit: BoxFit.fill,
                        ));
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Quý khách quan tâm dịch vụ gì hôm nay?',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
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
                                'https://uxwing.com/wp-content/themes/uxwing/download/hand-gestures/good-icon.png',
                                width: 40,
                                height: 40,
                              ),
                              Container(
                                width: Get.size.width / 1.5,
                                margin:
                                    const EdgeInsets.only(left: 15, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Dịch vụ ngân hàng',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Đăng ký bất kỳ dịch vụ mong muốn chỉ trong vòng vài phút và kết nối bạn bè',
                                      maxLines: 3,
                                      style: TextStyle(height: 1.5),
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
                                    color: Color(0xffd7eeff),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text('10',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500)),
                                    Text('dịch vụ',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500)),
                                    Icon(
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
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                      height: 15,
                    ))
          ],
        ),
      ),
    );
  }
}
