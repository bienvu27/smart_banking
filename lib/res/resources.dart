import 'package:flutter/material.dart';

import 'colors/app_colors.dart';
import 'dimentions/app_dimensions.dart';

class Resources {
  BuildContext _context;

  Resources(this._context);

  AppColors get color {
    return AppColors();
  }

  AppDimensions get dimension {
    return AppDimensions();
  }

  static Resources of(BuildContext context){
    return Resources(context);
  }
}