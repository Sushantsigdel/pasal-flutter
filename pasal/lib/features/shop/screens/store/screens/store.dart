import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pasal/common/widgets/images/p_circular_image.dart';
import 'package:pasal/common/widgets/layouts/grid_layout.dart';
import 'package:pasal/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:pasal/common/widgets/texts/p_brand_title_text_with_verified_icon.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/enums.dart';
import 'package:pasal/utils/constants/image_strings.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [PCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: PHelperFunctions.isDarkMode(context)
                  ? PColors.black
                  : PColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(PSizes.defaultSpace),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // Search bar
                    const SizedBox(height: PSizes.spaceBtnItems),
                    const PSearchContainer(
                      text: 'Search in store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: PSizes.spaceBtnSections),

                    // Featured Brands
                    PSectionHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () {}),
                    const SizedBox(height: PSizes.spaceBtnItems / 1.5),

                    PGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: PRoundedContainer(
                              padding: const EdgeInsets.all(PSizes.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  // Icon
                                  Flexible(
                                    child: PCircularImage(
                                      isNetworkImage: false,
                                      image: PImages.clothIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor:
                                          PHelperFunctions.isDarkMode(context)
                                              ? PColors.white
                                              : PColors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                      width: PSizes.spaceBtnItems / 2),

                                  // Text
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const PBrandTitleWithVerifiedIcon(
                                            title: 'Nike',
                                            brandTextSize: TextSizes.large),
                                        Text(
                                          '256 products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
