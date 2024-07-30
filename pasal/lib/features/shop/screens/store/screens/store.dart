import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/appbar/tabbar.dart';
import 'package:pasal/common/widgets/brands/brand_cards.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pasal/common/widgets/layouts/grid_layout.dart';
import 'package:pasal/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:pasal/common/widgets/texts/section_heading.dart';
import 'package:pasal/features/shop/screens/store/widgets/category_tab.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                            return const PBrandCard(showBorder: true);
                          })
                    ],
                  ),
                ),

                // Tabs
                bottom: const PTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              )
            ];
          },

          //  Body
          body: const TabBarView(
            children: [
              PCategoryTab(),
              PCategoryTab(),
              PCategoryTab(),
              PCategoryTab(),
              PCategoryTab()
            ],
          ),
        ),
      ),
    );
  }
}
