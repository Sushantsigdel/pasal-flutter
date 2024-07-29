import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/styles/shadows.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:pasal/common/widgets/icons/p_circular_icon.dart';
import 'package:pasal/common/widgets/images/p_rounded_image.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PProductCardVertical extends StatelessWidget {
  const PProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);

    // Container with side paddings, colors,edges, radius and shadow
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [PShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(PSizes.productImageRadius),
        color: dark ? PColors.darkGrey : PColors.white,
      ),
      child: Column(
        children: [
          // Thumbnail, Wishlist, Discount Tag
          PCircularContainer(
            height: 180,
            padding: const EdgeInsets.all(PSizes.sm),
            backgroundColor: dark ? PColors.dark : PColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                const PRoundedImage(
                    imageUrl: PImages.productImage1, applyImageRadius: true),

                // Sale tag
                Positioned(
                  top: 12,
                  child: PCircularContainer(
                    radius: PSizes.sm,
                    backgroundColor: PColors.secondaryColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: PSizes.sm, vertical: PSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: PColors.black)),
                  ),
                ),

                // Favorite icon
                const Positioned(
                  top: 0,
                  right: 0,
                  child: PCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),

          // Details
        ],
      ),
    );
  }
}
