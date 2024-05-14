import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/utils/themes/widget%20themes/elevated_button_theme.dart';
import 'package:flutter_login_app/src/utils/themes/widget%20themes/outline_button_theme.dart';
import 'package:flutter_login_app/src/utils/themes/widget%20themes/text_field_theme.dart';
import 'package:flutter_login_app/src/utils/themes/widget%20themes/text_theme.dart';

class TAppTheme {
  /* light theme */
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);
  /* dark theme */
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme);
}
