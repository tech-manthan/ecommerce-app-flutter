import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    required this.name,
    required this.email,
    this.onPressed,
  });

  final String image;
  final bool isNetworkImage;
  final String name;
  final String email;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        image: image,
        isNetworkImage: isNetworkImage,
        size: 50,
        padding: 0,
      ),
      title: Text(
        name,
        style: Theme.of(context).textTheme.headlineSmall!.apply(
          color: EColors.white,
        ),
      ),
      subtitle: Text(
        email,
        style: Theme.of(context).textTheme.bodyMedium!.apply(
          color: EColors.white,
        ),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: EColors.white,
        ),
      ),
    );
  }
}
