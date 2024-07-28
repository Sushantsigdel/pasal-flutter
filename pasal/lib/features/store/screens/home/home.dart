import 'package:flutter/material.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:pasal/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pasal/features/store/screens/home/widgets/home_appbar.dart';
import 'package:pasal/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PPrimaryHeaderContainer(
                child: Column(
              children: [
                // Appbar
                PHomeAppBar(),
                SizedBox(height: PSizes.spaceBtnSections),

                // Todo: Searchbar
                PSearchContainer(text: 'Search for products'),
                SizedBox(height: PSizes.spaceBtnSections),

                // Todo Categories
              ],
            )),
          ],
        ),
      ),
    );
  }
}
