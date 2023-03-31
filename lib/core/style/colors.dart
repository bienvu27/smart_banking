import 'dart:ui';

import 'package:flutter/material.dart';

const Color PRIMARY_COLOR_RED = Color(0xFFFA4C4C);
const Color PRIMARY_COLOR = Color(0xff2878b2);
const Color PRIMARY_COLOR_BLUE = Color(0xFF0031ba);

const Color clr_366173 = Color(0xFF366173);
const Color clr_6dd7ce = Color(0xFF6dd7ce);
const Color clr_4e636e = Color(0xFF4e636e);
const Color clr_black12 = Color(0x1F000000);
const Color clr_black26 = Color(0x42000000);
const Color clr_black38 = Color(0x61000000);
const Color clr_black54 = Color(0x8A000000);
const Color clr_black87 = Color(0xDD000000);
const Color clr_black = Color(0xFF000000);
const Color clr_white54 = Color(0x8AFFFFFF);
const Color clr_white60 = Color(0x99FFFFFF);
const Color clr_white = Color(0xFFFFFFFF);
const Color clr_grey = Color(0xFFFFFFFF);
const Color clr_yellow = Color(0xFFC9FF34);
const Color clr_yellow100 = Color(0xFFFFF9C4);
const Color clr_blue = Color(0xFF1565C0);
const Color clr_bg_text = Color(0xfff8f8f8);
const Color clr_blue_customization_1 = Color(0xffc4e3fa);
const Color clr_active_button = Color(0xff69dad0);
const Color clr_unactive_button = Color(0xffd7d7d7);
const Color clr_flower_1 = Color(0xffba9bac);
const Color clr_flower_2 = Color(0xffa5c9e0);
const Color clr_flower_3 = Color(0xffd5d0be);
const Color clr_e1e9ef = Color(0xffe1e9ef);
const Color clr_66cacef = Color(0xff66cace);
const Color clr_f5f5f5 = Color(0xfff5f5f5);
const Color clr_a6a8a9 = Color(0xffa6a8a9);
const Color clr_f6f5f7 = Color(0xfff6f5f7);
const Color clr_d9dbda = Color(0xffd9dbda);
const Color clr_d5d6d7 = Color(0xffd5d6d7);
const Color clr_2dcabc = Color(0xff2dcabc);

const Color clr_gradient_1 = Color(0xff0e51a2);
const Color clr_gradient_2 = Color(0xff2869b3);
const Color clr_gradient_3 = Color(0xff2d69b0);
const Color clr_gradient_4 = Color(0xff4a81c1);

const Color clr_gradient_1_1 = Color(0xff009691);
const Color clr_gradient_2_2 = Color(0xff00918c);
const Color clr_gradient_3_3 = Color(0xff02a099);
const Color clr_gradient_4_4 = Color(0xff02b3ad);

const Color clr_button_1 = Color(0xff01bbae);
const Color clr_button_2 = Color(0xff00a2ae);
const Color clr_button_3 = Color(0xff00a2ae);
const Color clr_button_4 = Color(0xff0181ad);
const Color clr_button_5 = Color(0xff026c90);

const Color button_color_home = Color(0xFFeaf7ff);
const Color button_color_bg_dialog = Color(0xffeaf7ff);
const Color button_dropdown_color_bg = Color(0xff00bfaf);

final Color color_white_opacity = Colors.white.withOpacity(0.1);

BoxShadow boxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.9),
  spreadRadius: 1,
  blurRadius: 8,
  offset: const Offset(1, 1), // changes position of shadow
);
BoxShadow boxShadowIcon =  BoxShadow(
  color:
  Colors.grey.withOpacity(0.9),
  spreadRadius: 2,
  blurRadius: 5,
  offset: const Offset(0, 5), // changes position of shadow
);
BoxShadow boxShadowTab =   BoxShadow(
    color: clr_e1e9ef.withOpacity(0.9),
    offset: const Offset(0.0, 1.0), //(x,y)
    blurRadius: 1.0,
    spreadRadius: 5);
BoxShadow bottomNavigationBar = BoxShadow(
  color: Colors.grey.withOpacity(0.9),
  spreadRadius: 3,
  blurRadius: 1,
  offset: const Offset(0, 3),
);

LinearGradient linearGradient1 = LinearGradient(colors: [
  clr_gradient_1,
  clr_gradient_2,
  clr_gradient_3,
  clr_gradient_4,
]);
LinearGradient linearGradient2 = LinearGradient(colors: [
  clr_gradient_4,
  clr_gradient_3,
  clr_gradient_2,
  clr_gradient_1,
]);
LinearGradient linearGradient3 = LinearGradient(colors: [
  clr_gradient_1_1,
  clr_gradient_2_2,
  clr_gradient_3_3,
  clr_gradient_4_4,
]);
LinearGradient linearGradient4 = LinearGradient(colors: [
  clr_gradient_4_4,
  clr_gradient_3_3,
  clr_gradient_2_2,
  clr_gradient_1_1,
]);
LinearGradient linearGradientTab = LinearGradient(colors: [
  clr_button_1,
  clr_button_2,
  clr_button_2,
  clr_button_2,
  clr_button_4,
  clr_button_4,
]);
LinearGradient linearGradientButtom = LinearGradient(
    colors: [
      clr_button_1,
      clr_button_2,
      clr_button_3,
      clr_button_4,
      clr_button_5,
    ]);
