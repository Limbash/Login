import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

// ================== light elevated button theme============
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          5.0,
        ),
      ),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(
        vertical: tButtonHeight,
      ),
    ),
  );

// ================== dark elevated button theme============
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          5.0,
        ),
      ),
      foregroundColor: tSecondaryColor,
      backgroundColor: tWhiteColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(
        vertical: tButtonHeight,
      ),
    ),
  );
}
