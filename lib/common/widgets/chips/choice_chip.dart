import 'package:ecommerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool value)? onSelected;

  @override
  Widget build(BuildContext context) {
    final color = EHelperFunctions.getColor(text);
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: EColors.transparent,
      ),
      child: ChoiceChip(
        label: color != null ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? EColors.white : null),
        avatar: color != null
            ? CircularContainer(
                width: 50,
                height: 50,
                backgroundColor: color,
              )
            : null,
        shape: color != null ? const CircleBorder() : null,
        labelPadding: color != null ? const EdgeInsets.all(0) : null,
        padding: color != null ? const EdgeInsets.all(0) : null,
        selectedColor: color,
        backgroundColor: color,
      ),
    );
  }
}
