import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EBottomSheetTheme {
  EBottomSheetTheme._();

  static final _bottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData lightBottomSheetTheme = _bottomSheetTheme
      .copyWith(
        backgroundColor: EColors.white,
        modalBackgroundColor: EColors.white,
      );

  static BottomSheetThemeData darkBottomSheetTheme = _bottomSheetTheme.copyWith(
    backgroundColor: EColors.black,
    modalBackgroundColor: EColors.black,
  );
}
