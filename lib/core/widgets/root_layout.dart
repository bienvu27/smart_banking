import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_banking/screens/dashboard/view/dashboard_page.dart';


class RootLayout extends StatefulWidget {
  final Widget? child;

  const RootLayout({
    this.child,
  });

  @override
  _RootLayoutState createState() => _RootLayoutState();
}


class _RootLayoutState extends State<RootLayout> {


  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
  }


  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    //  ScreenUtil.init(context);
    //mặc định lúc đầu xét là false
    return  Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        widget.child??
        SizedBox(),
      ],
    );
  }
}
