import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/theme/custom/app_bar_theme.dart';
import 'package:ecommerce_app/utils/theme/custom/bottom_sheet_theme.dart';
import 'package:ecommerce_app/utils/theme/custom/checkbox_theme.dart';
import 'package:ecommerce_app/utils/theme/custom/chip_theme.dart';
import 'package:ecommerce_app/utils/theme/custom/elevated_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom/oultlined_button_theme.dart';
import 'package:ecommerce_app/utils/theme/custom/text_field_theme.dart';
import 'package:ecommerce_app/utils/theme/custom/text_theme.dart';

import 'package:flutter/material.dart';

class EAppTheme {
  EAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: EColors.primary,
    scaffoldBackgroundColor: EColors.light,
    textTheme: ETextTheme.lightTextTheme,
    inputDecorationTheme: ETextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
    chipTheme: EChipTheme.lightChipTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: EColors.primary,
    scaffoldBackgroundColor: EColors.dark,
    textTheme: ETextTheme.darkTextTheme,
    inputDecorationTheme: ETextFormFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
    chipTheme: EChipTheme.darkChipTheme,
  );
}
