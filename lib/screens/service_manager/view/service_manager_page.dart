import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/resources/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../../fake_data/data_fake_home.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../components/services/service_list.dart';

class ServiceManager extends StatefulWidget {
  const ServiceManager({Key? key}) : super(key: key);

  @override
  State<ServiceManager> createState() => _ServiceManagerState();
}

class _ServiceManagerState extends State<ServiceManager> {
  String selectVal = "Tất cả các dịch vụ";
  var data = Get.arguments;
  String id = "1";
  String name = Get.arguments[1];

  @override
  void initState() {
    super.initState();
    id = data[0] != null && data[0].toString().isNotEmpty ? data[0].toString() : "1";
    selectVal = selectVal.isNotEmpty ? name : "Tất cả các dịch vụ";
    print(name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: SERVICES_MANAGER,
        callback: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (id == "1") ...[
              ServiceList(title: SERVICES_BANK, list: listBank),
              ServiceList(title: SERVICES_INSURANCE, list: listInsurance),
              ServiceList(title: SERVICES_STOCK, list: listStock),
              ServiceList(title: REGISTER_SERVICES, list: listRegisterService),
              ServiceList(title: SHOPPING, list: listShopping),
              ServiceList(title: SERVICE_CHARITY, list: listCharity),
              ServiceList(
                title: SUPPORT,
                list: listSupport,
                onTap: (e) {
                  print(e.id);
                 switch(e.id){
                   case 1:
                     break;

                   case 2:
                     break;

                   case 3:
                     break;

                   case 4:
                     Get.toNamed("/web_view", arguments: ['Lãi suất','https://vrbank.com.vn/vi/lai-suat-1/']);
                     break;

                   case 5:
                     Get.toNamed("/web_view", arguments: ['Tỷ giá', 'https://vrbank.com.vn/vi/ty-gia-ngoai-te/']);
                     break;

                   case 6:
                     break;
                 }
                },
              ),
              Container(
                color: Colors.white,
                height: 100.h,
              ),
            ] else if (id == "2") ...[
              Container(
                color: clr_white,
                height: Get.size.height,
                child: ServiceList(
                  title: SERVICES_BANK,
                  list: listBank,
                ),
              ),
            ] else if (id == "3") ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: SERVICES_INSURANCE, list: listInsurance)),
            ] else if (id == "4") ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: SERVICES_STOCK, list: listStock)),
            ] else if (id == "5") ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(title: REGISTER_SERVICES, list: listRegisterService)),
            ] else if (id == "6") ...[
              Container(
                color: clr_white,
                height: Get.size.height,
                child: ServiceList(
                  title: SHOPPING,
                  list: listShopping,
                ),
              ),
            ] else if (id == "7") ...[
              Container(
                  color: clr_white,
                  height: Get.size.height,
                  child: ServiceList(
                    title: SERVICE_CHARITY,
                    list: listCharity,
                  )),
            ] else if (id == "8") ...[
              Container(
                color: clr_white,
                height: Get.size.height,
                child: ServiceList(
                  title: SUPPORT,
                  list: listSupport,
                ),
              ),
            ]
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: height_16,
            ),
            padding: EdgeInsets.only(left: width_4, right: width_4),
            height: height_28,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: PRIMARY_COLOR,
              borderRadius: BorderRadius.circular(border_16),
            ),
            child: Container(
              alignment: Alignment.center,
              child: DropdownButton(
                underline: const SizedBox(),
                value: selectVal,
                onChanged: (value) {
                  setState(() {
                    selectVal = value.toString();
                  });
                },
                alignment: Alignment.center,
                dropdownColor: PRIMARY_COLOR,
                borderRadius: BorderRadius.circular(20.r),
                icon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: clr_white,
                  size: fontSize_20,
                ),
                items: listItems.map((item) {
                  return DropdownMenuItem(
                      onTap: () {
                        id = item.id!.toString();
                      },
                      value: item.name,
                      child: Center(
                        child: Text(
                          item.name ?? '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: fontSize_14,
                            color: clr_white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ));
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
