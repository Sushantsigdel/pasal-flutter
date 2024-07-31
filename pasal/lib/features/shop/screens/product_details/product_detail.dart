import 'package:flutter/material.dart';
import 'package:pasal/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:pasal/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:pasal/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:pasal/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            PProductImageSlider(),

            // Product Title and other product details
            Padding(
              padding: EdgeInsets.only(
                  right: PSizes.defaultSpace,
                  left: PSizes.defaultSpace,
                  bottom: PSizes.defaultSpace),
              child: Column(
                children: [
                  // Ratings
                  PRatingAndShare(),

                  // Price, Title, Stock & Brand
                  PProductMetaData(),

                  // Attributes

                  // Checkout Button

                  // Description

                  // Reviees
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
