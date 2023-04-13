import 'package:flutter/material.dart';
import '../../../../../../core/style/colors.dart';
import '../../../../../../core/style/size.dart';
import '../models/beneficiaryAccount.dart';

class ListBenefAccount extends StatelessWidget {
  ListBenefAccount({
    super.key,
    required this.list,
    this.onTapElement,
    this.icon,
    this.selectedElementIndex,
  });

  final List<BeneficiaryAccount> list;
  IconData? icon;
  Function? onTapElement;
  int? selectedElementIndex;


  // final VoidCallback callBack;

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: clr_white,
      child: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: list.map((e) {
          return Container(
            margin: EdgeInsets.only(
              top: height_12,
            ),
            color: clr_white,
            child: RadioListTile(
              onChanged: (_) {
                if(onTapElement != null) {
                  onTapElement!(_);
                }
              },
              groupValue: selectedElementIndex,
              value: list.indexOf(e),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Text(
                      e.account ?? '',
                      maxLines: 2,
                      style: TextStyle(
                        color: clr_black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'open_sans',
                        fontSize: fontSize_11,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(height: height_8),
                  Row(
                    children: [
                      Text(
                        "Số dư khả dụng: ",
                        maxLines: 2,
                        style: TextStyle(
                          color: clr_black,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'open_sans',
                          fontSize: fontSize_11,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        e.surplus ?? "",
                        maxLines: 2,
                        style: TextStyle(
                          color: clr_black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'open_sans',
                          fontSize: fontSize_11,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.35,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: width_1, color: clr_black12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
