import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

// -------------- light mode ---------------
  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: tSecondaryColor,
          suffixIconColor: tSecondaryColor,
          floatingLabelStyle: TextStyle(color: tSecondaryColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: tSecondaryColor, width: 2.0),
          ));

// -------------- light mode ---------------
  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: tPrimaryColor,
          suffixIconColor: tPrimaryColor,
          floatingLabelStyle: TextStyle(color: tPrimaryColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: tPrimaryColor, width: 2.0),
          ));
}
