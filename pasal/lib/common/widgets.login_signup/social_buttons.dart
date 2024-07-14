import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';

class PSocialButtons extends StatelessWidget {
  const PSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: PColors.grey),
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                onPressed: () {},
                icon: const Image(
                  width: PSizes.iconMd,
                  height: PSizes.iconMd,
                  image: AssetImage(PImages.google),
                ),
              ),
            ),
            const SizedBox(
              width: PSizes.spaceBtnItems,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: PColors.grey),
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                onPressed: () {},
                icon: const Image(
                  width: PSizes.iconMd,
                  height: PSizes.iconMd,
                  image: AssetImage(PImages.facebook),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class social_buttons extends StatelessWidget {
  const social_buttons({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? PColors.darkGrey : PColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(PTexts.orSignInWith.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? PColors.darkGrey : PColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}