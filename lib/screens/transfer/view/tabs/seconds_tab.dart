import 'package:flutter/material.dart';

class SecondsTab extends StatefulWidget {
  const SecondsTab({Key? key}) : super(key: key);

  @override
  State<SecondsTab> createState() => _SecondsTabState();
}

class _SecondsTabState extends State<SecondsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Tab2')),
    );
  }
}
