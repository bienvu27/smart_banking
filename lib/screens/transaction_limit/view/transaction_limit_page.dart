import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../res/strings/strings.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/size.dart';
import '../../components/app_bar/app_bar_component.dart';
import '../model/transaction_limit_model.dart';

class TransactionLimitPage extends StatefulWidget {
  const TransactionLimitPage({Key? key}) : super(key: key);

  @override
  State<TransactionLimitPage> createState() => _TransactionLimitPageState();
}

class _TransactionLimitPageState extends State<TransactionLimitPage> {
  List<TransactionLimitModel> listsTransactionLimit = [
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 DKK'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '600,000 DKK'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '1,800,000 DKK'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 RUB'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '7,400,000 RUB'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '22,000,000 RUB'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 SEK'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '900,000 SEK'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '2,700,000 SEK'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 USD'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '100,000 USD'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '300,000 USD'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 JYP'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '11,000,000 JYP'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '33,00,000 JYP'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 CAD'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '130,000 CAD'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '400,000 CAD'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 JPY'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '11,000,000 JPY'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '33,000,000 JPY'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 THB'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '3,400,000 THB'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '11,000,000 THB'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 NOK'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '800,000 NOK'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '2,400,000 NOK'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 NZD'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '150,000 NZD'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '450,000 NZD'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 EUR'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '80,000 EUR'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '240,000 EUR'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 HKD'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '800,000 HKD'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '2,400,000 HKD'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 CHF'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '100,000 CHF'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '300,000 CHF'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 GBP'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '80,000 GBP'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '240,000 GBP'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 AUD'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '130,000 AUD'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '400,000 AUD'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 SGD'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '130,000 SGD'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '400,000 SGD'),
    ]),
    TransactionLimitModel(titleHeader: "Bán ngoại tệ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 SGD'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '130,000 SGD'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '400,000 SGD'),
    ]),
    TransactionLimitModel(titleHeader: "Chuyển khoản nội bộ cùng chủ tài khoản", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 VND'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '10,000,000,000,000 VND'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '10,000,000,000,000 VND'),
    ]),
    TransactionLimitModel(titleHeader: "Chuyển khoản nội bộ khác chủ tài khoản", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 VND'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '1,000,000,000 VND'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '1,000,000,000 VND'),
    ]),
    TransactionLimitModel(titleHeader: "Chuyển khoản nội đến Alias", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 VND'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '1,000,000,000 VND'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '1,000,000,000 VND'),
    ]),
    TransactionLimitModel(titleHeader: "Chuyển tiền ngoài VRB đến số thẻ", description: [
      ListDescriptionTransaction(title: 'Số lần giao dịch/ ngày', subTitle: '1000'),
      ListDescriptionTransaction(title: 'Hạn mức tối thiểu/ GD', subTitle: '1 VND'),
      ListDescriptionTransaction(title: 'Hạn mức tối đa/ GD', subTitle: '499,999,999 VND'),
      ListDescriptionTransaction(title: 'Tổng hạn mức/ ngày', subTitle: '1,000,000,000 VND'),
    ]),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        bgColor: clr_white,
        colorTitle: clr_black,
        colorIcon: clr_black,
        title: TRANSACTION_LIMIT,
        iconAction: Icons.home_filled,
        callback: () => Get.back(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: listsTransactionLimit.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildPlayerModelList(listsTransactionLimit[index]);
          },
        ),
      ),
    );
  }

  Widget _buildPlayerModelList(TransactionLimitModel items) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: Colors.black,
        dividerColor: Colors.transparent,
      ),
      child: Container(
        color: clr_f0faf9,
        margin: EdgeInsets.only(
          bottom: height_2,
        ),
        child: ExpansionTile(
          iconColor: Colors.black,
          title: Text(
            items.titleHeader ?? '',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: height_8),
              color: Colors.white,
              child: Column(
                children: items.description!
                    .map((e) => Container(
                          margin: EdgeInsets.only(
                            left: width_12,
                            right: width_12,
                            bottom: height_8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e.title ?? '',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38,
                                  fontSize: fontSize_12,
                                ),
                              ),
                              Text(
                                e.subTitle ?? '',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: fontSize_12,
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
