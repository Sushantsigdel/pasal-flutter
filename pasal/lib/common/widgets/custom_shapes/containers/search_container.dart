import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/device/device_utlity.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class PSearchContainer extends StatelessWidget {
  const PSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PSizes.defaultSpace),
      child: Container(
        width: PDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(PSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? PColors.dark
                  : PColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(PSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: PColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: PColors.darkerGrey),
            const SizedBox(width: PSizes.spaceBtnItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
