import 'package:flutter/material.dart';

import '../domain/model/pharma.dart';

final ColorScheme colorSchemeG_46 = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.pinkAccent.shade700,
    onPrimary: Colors.white,
    secondary: Colors.pinkAccent,
    onSecondary: Colors.pinkAccent,
    error: Colors.red,
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white);

final ColorScheme colorSchemeB_15 = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.yellow.shade700,
    onPrimary: Colors.white,
    secondary: Colors.pinkAccent,
    onSecondary: Colors.yellow,
    error: Colors.red,
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white);

final ColorScheme colorSchemeN_40 = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.blue.shade700,
    onPrimary: Colors.white,
    secondary: Colors.pinkAccent,
    onSecondary: Colors.blue,
    error: Colors.red,
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white);

final ColorScheme colorSchemeI_16 = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.grey.shade700,
    onPrimary: Colors.white,
    secondary: Colors.pinkAccent,
    onSecondary: Colors.grey,
    error: Colors.red,
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white);

final ColorScheme colorSchemeI_27 = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.purple.shade700,
    onPrimary: Colors.white,
    secondary: Colors.pinkAccent,
    onSecondary: Colors.purple,
    error: Colors.red,
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white);

final ColorScheme colorSchemeB_6 = ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.red.shade700,
    onPrimary: Colors.white,
    secondary: Colors.red,
    onSecondary: Colors.red,
    error: Colors.red,
    onError: Colors.black,
    background: Colors.black,
    onBackground: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white);

ColorScheme getColorScheme(PharmaType pharmaType) {
  switch (pharmaType) {
    case PharmaType.G_46_LAFFODI:
      return colorSchemeG_46;
      break;
    case PharmaType.B_15_VERBALUCE:
      return colorSchemeB_15;
      break;
    case PharmaType.N_40_LUVACTIN:
      return colorSchemeN_40;
      break;
    case PharmaType.I_16_DARKENFLOXX:
      return colorSchemeI_16;
      break;
    case PharmaType.I_27_PHOBICA:
      return colorSchemeI_27;
      break;
    case PharmaType.B_6_OBEDIEX:
      return colorSchemeB_6;
      break;
  }
}
