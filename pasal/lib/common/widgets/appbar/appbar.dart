import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/device/device_utlity.dart';

class PAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PAppBar({
    super.key,
    this.title,
    this.actions,
    this.showBackArrow = false,
    this.leadingIcon,
    this.leadingOnPressed,
    this.style,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        titleTextStyle: style,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        PDeviceUtils.getAppBarHeight(),
      );
}
