import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class ECheckboxTheme {
  ECheckboxTheme._();

  static final _checkBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(ESizes.xs),
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return EColors.white;
      } else {
        return EColors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return EColors.primary;
      } else {
        return EColors.transparent;
      }
    }),
  );

  static CheckboxThemeData lightCheckboxTheme = _checkBoxTheme;

  static CheckboxThemeData darkCheckboxTheme = _checkBoxTheme;
}
