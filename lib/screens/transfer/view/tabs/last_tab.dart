import 'package:flutter/material.dart';

class LastTab extends StatefulWidget {
  const LastTab({Key? key}) : super(key: key);

  @override
  State<LastTab> createState() => _LastTabState();
}

class _LastTabState extends State<LastTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Tab3')),
    );
  }
}
