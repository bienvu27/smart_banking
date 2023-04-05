import 'package:flutter/material.dart';

class TalkCardDecoration extends StatelessWidget {
  const TalkCardDecoration({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
      ),
      child: Material(
        // color: Theme.of(context).scaffoldBackgroundColor,
        color: Theme.of(context).cardColor,
        child: child,
      ),
    );
  }
}