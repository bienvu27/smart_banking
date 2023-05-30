import 'package:flutter/material.dart';

abstract class BaseColors {
  //theme color
  MaterialColor get themeColorPrimary;

  Color get colorPrimary;

  Color get colorAccent;

  //text color
  Color get colorPrimaryText;

  Color get colorSecondaryText;

  Color get colorSubText;

  //Basic color
  Color get colorWhite;

  Color get colorBlack;

  Color get colorRed;

  Color get colorBlue;

  Color get colorGreen;

  Color get colorOrange;

  Color get colorYellow;

  Color get colorPink;

  Color get colorPurpler;

  Color get colorViolet;

  Color get colorTurquoise;

  Color get colorGold;

  Color get colorLime;

  Color get colorAqua;

  Color get colorNavy;

  Color get colorCoral;

  Color get colorTeal;

  Color get colorBrown;

  //Gradient color
  LinearGradient get colorGradientPrimary;

  LinearGradient get colorGradientAccent;

  LinearGradient get colorGradientTab;

  LinearGradient get colorGradientButton;

  LinearGradient get colorGradientButton2;

  LinearGradient get colorGradientBg;

  LinearGradient get colorGradientBg2;

  LinearGradient get colorGradientDialog;

  LinearGradient get colorGradientBgButton;

  // Shadow
  BoxShadow get boxShadow;

  BoxShadow get boxShadowIcon;

  BoxShadow get boxShadowTab;

  BoxShadow get boxShadowBottomNavigationBar;

  BoxShadow get boxShadowImage;

  BoxShadow get boxShadowSearch;

  // ========================================
  Color get colorUnActiveButton;
  LinearGradient get colorGradientBgBanner;
}
