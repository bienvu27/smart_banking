import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/name_icon.dart';
import '../../../core/style/size.dart';
import '../../transaction_confirmation/view/talk_card_decoration.dart';
import '../../transaction_confirmation/view/ticket_clipper.dart';

class TransferSuccessPage extends StatelessWidget {
  const TransferSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: height_28,
            ),
            padding: EdgeInsets.only(
              left: width_12,
              right: width_12,
            ),
            height: height_96,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(border_8),
                  child: Image.network(
                    image_transfer_success,
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height_16),
            child: ClipPath(
              clipper: TicketClipper(true, true),
              child: TalkCardDecoration(
                child: Container(
                  height: 100.h,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  child: Column(
                    children: [Container()],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
