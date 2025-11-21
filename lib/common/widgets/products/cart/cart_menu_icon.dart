import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartMenuIcon extends StatelessWidget {
  const CartMenuIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
    required this.badgeColor,
    required this.badgeTextColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;
  final Color badgeColor;
  final Color badgeTextColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: badgeColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "1",
                style:
                    Theme.of(
                      context,
                    ).textTheme.labelLarge!.apply(
                      color: badgeTextColor,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
