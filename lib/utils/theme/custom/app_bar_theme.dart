import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EAppBarTheme {
  EAppBarTheme._();

  static final _textStyle = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
  );

  static final _iconTheme = const IconThemeData(
    size: ESizes.iconMd,
  );

  static final _appBarTheme = const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
  );

  static final lightAppBarTheme = _appBarTheme.copyWith(
    backgroundColor: EColors.light,
    surfaceTintColor: EColors.light,
    iconTheme: _iconTheme.copyWith(
      color: EColors.iconPrimary,
    ),
    actionsIconTheme: _iconTheme.copyWith(
      color: EColors.iconPrimary,
    ),
    titleTextStyle: _textStyle.copyWith(
      color: EColors.black,
    ),
  );

  static final darkAppBarTheme = _appBarTheme.copyWith(
    backgroundColor: EColors.dark,
    surfaceTintColor: EColors.dark,
    iconTheme: _iconTheme.copyWith(
      color: EColors.black,
    ),
    actionsIconTheme: _iconTheme.copyWith(
      color: EColors.white,
    ),
    titleTextStyle: _textStyle.copyWith(
      color: EColors.white,
    ),
  );
}
