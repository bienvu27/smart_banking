import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/size.dart';
import '../../../../fake_data/data_fake_home.dart';
import '../../model/history_transfer_model.dart';

class TabHistoryPage3 extends StatelessWidget {
  const TabHistoryPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: ListView.builder(
        itemCount: historyTransfer.length,
        itemBuilder: (context, index) {
          var money = NumberFormat.decimalPattern().format(historyTransfer[index].money);
          return Container(
            padding: EdgeInsets.only(
              left: width_16,
              right: width_16,
              bottom: height_16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.4,
                      child: Text(
                        '${historyTransfer[index].cardNumber}',
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: fontSize_12,
                          fontFamily: 'open_sans',
                          color: clr_black,
                          overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height_2,
                    ),
                    Text(
                      '${historyTransfer[index].dateTime}',
                      style: TextStyle(
                        fontSize: fontSize_10,
                        fontFamily: 'open_sans',
                        color: clr_black54,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: height_2,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: clr_67748E,
                          radius: border_7,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: fontSize_11,
                          ),
                        ),
                        SizedBox(
                          width: width_4,
                        ),
                        Text(
                          'Thêm vào quản lý chi tiêu',
                          style: TextStyle(
                            fontSize: fontSize_10,
                            fontFamily: 'open_sans',
                            color: clr_black54,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                       Text(
                          '-',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: fontSize_12,
                            fontFamily: 'open_sans',
                            color: Colors.redAccent,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '$money VND',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: fontSize_12,
                            fontFamily: 'open_sans',
                            color: Colors.redAccent,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height_2,
                    ),
                    Text(
                      'Mã GD: ${historyTransfer[index].tradingCode}',
                      style: TextStyle(
                        fontSize: fontSize_9,
                        fontFamily: 'open_sans',
                        color: clr_black54,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
