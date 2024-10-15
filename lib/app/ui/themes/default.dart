import 'package:flutter/material.dart';

import '../../configs/color.dart';

final ThemeData defaultTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: CustomColors.primary,
    colorScheme: const ColorScheme.light(
      primary: CustomColors.primary,
      secondary: CustomColors.accent,
      surface: Colors.white,
    ),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: CustomColors.appBar,
      foregroundColor: Colors.white,
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: CustomColors.cursor));
