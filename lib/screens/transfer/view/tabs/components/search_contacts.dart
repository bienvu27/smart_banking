import 'package:flutter/material.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';

class SearchContacts extends StatelessWidget {
  const SearchContacts({
    super.key,
    required this.visibly,
    required this.title,
  });

  final bool visibly;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibly,
      child: Container(
        margin: EdgeInsets.only(top: height_8),
        padding: EdgeInsets.only(
          left: width_16,
          right: width_16,
        ),
        height: height_28,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(blurRadius: border_8, color: clr_black12),
            ],
            borderRadius: BorderRadius.circular(border_16),
          ),
          child: TextField(
            maxLines: 1,
            style: TextStyle(fontSize: fontSize_12),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: clr_black54,
                size: fontSize_20,
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(border_10))),
              fillColor: clr_white,
              contentPadding: EdgeInsets.zero,
              hintText: '$title',
              hintStyle: TextStyle(
                fontSize: fontSize_10,
                fontWeight: FontWeight.w500,
                color: clr_black26,
              ),
            ),
          ),
        ),
      ),
    );
  }
}