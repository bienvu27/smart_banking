import 'package:flutter/material.dart';
import '../../../../../core/style/colors.dart';
import '../../../../../core/style/size.dart';

class SearchContacts extends StatelessWidget {
   SearchContacts({
    super.key,
    required this.visibly,
    required this.title,
    this.searchTextController,
    this.onChange,
  });

  final bool visibly;
  final String title;
   TextEditingController? searchTextController;
   Function? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height_10),
      child: Visibility(
        visible: visibly,
        child: Container(
          padding: EdgeInsets.only(
            left: width_16,
            right: width_16,
          ),
          height: height_28,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(border_24),
              border: Border.all(width: 1, color: clr_black12,)
            ),
            child: TextField(
              maxLines: 1,
              controller: searchTextController,
              style: TextStyle(fontSize: fontSize_12),
              textAlignVertical: TextAlignVertical.center,
              onChanged: (_) {
                if(onChange != null) {
                  onChange!(_);
                }
              },
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: clr_black12,
                  size: fontSize_20,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(
                      border_16,
                    ))),
                fillColor: clr_white,
                contentPadding: EdgeInsets.zero,
                hintText: '$title',
                hintStyle: TextStyle(
                  fontSize: fontSize_11,
                  fontFamily: 'open_sans',
                  fontWeight: FontWeight.w500,
                  color: clr_black12,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
