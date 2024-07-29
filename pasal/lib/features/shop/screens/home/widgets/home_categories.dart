import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';

class PHomeCategories extends StatelessWidget {
  const PHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: PSizes.defaultSpace),
        child: Column(
          children: [
            const PSectionHeading(
              title: 'Popular Categories',
              textColor: PColors.white,
              showActionButton: false,
            ),
            const SizedBox(height: PSizes.spaceBtnItems),

            // Scrollable categories
            SizedBox(
              height: 80,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return PVerticalImageText(
                      image: PImages.shoeIcon,
                      title: 'Shoes',
                      onTap: () {},
                    );
                  }),
            ),
          ],
        ));
  }
}
