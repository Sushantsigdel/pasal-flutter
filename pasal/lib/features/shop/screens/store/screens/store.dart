import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pasal/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:pasal/utils/constants/colors.dart';
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
                  children: const [
                    // Search bar
                    SizedBox(height: PSizes.spaceBtnItems),
                    PSearchContainer(
                      text: 'Search in store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: PSizes.spaceBtnSections),
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
