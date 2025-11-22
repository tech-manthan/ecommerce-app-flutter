import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ESwitchTheme {
  ESwitchTheme._();

  static final _switchTheme = SwitchThemeData(
    thumbColor: WidgetStateColor.resolveWith(
      (states) {
        if (states.contains(WidgetState.disabled)) {
          return EColors.grey;
        }
        if (states.contains(WidgetState.selected)) {
          return EColors.primary;
        }
        return EColors.darkerGrey;
      },
    ),
    trackColor: WidgetStateColor.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return EColors.primary.withValues(alpha: 0.2);
        }
        return EColors.darkGrey;
      },
    ),
    trackOutlineColor: WidgetStateColor.resolveWith(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return EColors.primary;
        }
        return EColors.darkerGrey;
      },
    ),
  );

  static final lightSwitchTheme = _switchTheme;

  static final darkSwitchTheme = _switchTheme;
}
