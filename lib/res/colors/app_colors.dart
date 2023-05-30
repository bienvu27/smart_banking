import 'package:flutter/material.dart';
import 'package:smart_banking/res/colors/base_colors.dart';

class AppColors implements BaseColors {
  final Map<int, Color> _primary = {
    50: const Color.fromRGBO(0, 45, 133, 0.1),
    100: const Color.fromRGBO(0, 45, 133, 0.2),
    200: const Color.fromRGBO(0, 45, 133, 0.3),
    300: const Color.fromRGBO(0, 45, 133, 0.4),
    400: const Color.fromRGBO(0, 45, 133, 0.5),
    500: const Color.fromRGBO(0, 45, 133, 0.6),
    600: const Color.fromRGBO(0, 45, 133, 0.7),
    700: const Color.fromRGBO(0, 45, 133, 0.8),
    800: const Color.fromRGBO(0, 45, 133, 0.9),
    900: const Color.fromRGBO(0, 45, 133, 1.0),
  };

  // ---------------------- Color Primary -----------------------------------
  @override
  // TODO: implement colorPrimary
  MaterialColor get themeColorPrimary => MaterialColor(0xFF002d85, _primary);

  @override
  // TODO: implement colorPrimary
  Color get colorPrimary => const Color(0xFF013AA9);

  @override
  // TODO: implement colorAccent
  Color get colorAccent => const Color(0xFFde0000);

  // ---------------------- Color Basic -------------------------------------
  @override
  // TODO: implement colorAqua
  Color get colorAqua => const Color(0xFF00FFFF);

  @override
  // TODO: implement colorBlack
  Color get colorBlack => const Color(0xFF000000);

  @override
  // TODO: implement colorBlue
  Color get colorBlue => const Color(0xFF0000FF);

  @override
  // TODO: implement colorBrown
  Color get colorBrown => const Color(0xFFA52A2A);

  @override
  // TODO: implement colorCoral
  Color get colorCoral => const Color(0xFFFF7F50);

  @override
  // TODO: implement colorGold
  Color get colorGold => const Color(0xFFFFD700);

  @override
  // TODO: implement colorGreen
  Color get colorGreen => const Color(0xFF008000);

  @override
  // TODO: implement colorLime
  Color get colorLime => const Color(0xFF00FF00);

  @override
  // TODO: implement colorNavy
  Color get colorNavy => const Color(0xFF000080);

  @override
  // TODO: implement colorOrange
  Color get colorOrange => const Color(0xFFFFA500);

  @override
  // TODO: implement colorPink
  Color get colorPink => const Color(0xFFFFC0CB);

  @override
  // TODO: implement colorPurpler
  Color get colorPurpler => const Color(0xFF800080);

  @override
  // TODO: implement colorRed
  Color get colorRed => const Color(0xFFFF0000);

  @override
  // TODO: implement colorTeal
  Color get colorTeal => const Color(0xFF008080);

  @override
  // TODO: implement colorTurquoise
  Color get colorTurquoise => const Color(0xFFAFEEEE);

  @override
  // TODO: implement colorViolet
  Color get colorViolet => const Color(0xFFEE82EE);

  @override
  // TODO: implement colorWhite
  Color get colorWhite => const Color(0xFFFFFFFF);

  @override
  // TODO: implement colorYellow
  Color get colorYellow => const Color(0xFFFFFF00);

  // ---------------------- Color Text --------------------------------------
  @override
  // TODO: implement colorPrimaryText
  Color get colorPrimaryText => const Color(0xFF000000);

  @override
  // TODO: implement colorSecondaryText
  Color get colorSecondaryText => const Color(0x42000000);

  @override
  // TODO: implement colorSubText
  Color get colorSubText => const Color(0xff002d85);

  // ---------------------- Color Gradient ----------------------------------
  @override
  // TODO: implement colorGradientPrimary
  LinearGradient get colorGradientPrimary => LinearGradient(colors: [
        Color(0xFF002d85),
        Color(0xFF0000FF),
      ]);

  @override
  // TODO: implement colorGradientAccent
  LinearGradient get colorGradientAccent => LinearGradient(colors: [
        Color(0xFF0000FF),
        Color(0xFF002d85),
      ]);

  @override
  // TODO: implement colorGradientBg
  LinearGradient get colorGradientBg => LinearGradient(colors: [
        Color(0xFF026c90),
        Color(0xFF0181ad),
        Color(0xFF00a2ae),
        Color(0xFF00a2ae),
        Color(0xFF01bbae),
      ]);

  @override
  // TODO: implement colorGradientBg2
  LinearGradient get colorGradientBg2 => LinearGradient(colors: [
        Color(0xFF01bbae),
        Color(0xFF00a2ae),
        Color(0xFF00a2ae),
        Color(0xFF0181ad),
        Color(0xFF026c90),
      ]);

  @override
  // TODO: implement colorGradientBgButton
  LinearGradient get colorGradientBgButton => LinearGradient(colors: [
        Color(0xFF01bbae),
        Color(0xFF00a2ae),
        Color(0xFF00a2ae),
        Color(0xFF0181ad),
        Color(0xFF026c90),
      ]);

  @override
  // TODO: implement colorGradientButton
  LinearGradient get colorGradientButton => LinearGradient(
        colors: [
          Color(0xFF002d85),
          Color(0xFF013aa9),
        ],
        begin: Alignment(-1, -1),
        end: Alignment(1, 1),
      );

  @override
  // TODO: implement colorGradientButton2
  LinearGradient get colorGradientButton2 => LinearGradient(
        colors: [
          Color(0xFF013aa9),
          Color(0xFF002d85),
        ],
        begin: Alignment(-1, -1),
        end: Alignment(1, 1),
      );

  @override
  // TODO: implement colorGradientDialog
  LinearGradient get colorGradientDialog => LinearGradient(colors: [
        Color(0xFF01bbae),
        Color(0xFF00a2ae),
        Color(0xFF0181ad),
      ]);

  @override
  // TODO: implement colorGradientTab
  LinearGradient get colorGradientTab => LinearGradient(colors: [
        Color(0xFF01bbae),
        Color(0xFF00a2ae),
        Color(0xFF00a2ae),
        Color(0xFF00a2ae),
        Color(0xFF0181ad),
        Color(0xFF0181ad),
      ]);

  // ---------------------- Shadow Color ------------------------------------
  @override
  // TODO: implement boxShadow
  BoxShadow get boxShadow => BoxShadow(
        color: Colors.grey.withOpacity(0.9),
        spreadRadius: 1,
        blurRadius: 8,
        offset: const Offset(1, 1),
      );

  @override
  // TODO: implement boxShadowBottomNavigationBar
  BoxShadow get boxShadowBottomNavigationBar => BoxShadow(
        color: Colors.grey.withOpacity(0.9),
        spreadRadius: 3,
        blurRadius: 1,
        offset: const Offset(0, 3),
      );

  @override
  // TODO: implement boxShadowIcon
  BoxShadow get boxShadowIcon => BoxShadow(
        color: Colors.grey.withOpacity(0.9),
        spreadRadius: 2,
        blurRadius: 5,
        offset: const Offset(0, 5),
      );

  @override
  // TODO: implement boxShadowImage
  BoxShadow get boxShadowImage => BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: const Offset(1, 1), // changes position of shadow
      );

  @override
  // TODO: implement boxShadowSearch
  BoxShadow get boxShadowSearch => BoxShadow(
        color: Colors.grey,
        blurRadius: 15.0, // soften the shadow
        spreadRadius: 0.1, //extend the shadow
        offset: Offset(
          0, // Move to right 5  horizontally
          1.0, // Move to bottom 5 Vertically
        ),
      );

  @override
  // TODO: implement boxShadowTab
  BoxShadow get boxShadowTab => BoxShadow(
      color: Color(0xFFe1e9ef).withOpacity(0.9),
      offset: const Offset(0.0, 1.0), //(x,y)
      blurRadius: 1.0,
      spreadRadius: 5);

// =========================================================

  @override
  // TODO: implement colorUnActiveButton
  Color get colorUnActiveButton => const Color(0XFF8F9BB3);

  @override
  // TODO: implement colorGradientBgBanner
  LinearGradient get colorGradientBgBanner =>
      LinearGradient(begin: FractionalOffset.bottomCenter, end: FractionalOffset.topCenter, colors: [
        Colors.grey.withOpacity(0.1),
        Colors.black87,
      ], stops: [
        0.0,
        1.0
      ]);
}
