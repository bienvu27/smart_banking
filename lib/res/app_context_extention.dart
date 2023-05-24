import 'package:flutter/material.dart';
import 'package:smart_banking/res/resources.dart';

extension AppContext on BuildContext {
  Resources get resources => Resources.of(this);
}
