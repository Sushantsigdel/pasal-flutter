import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/common/widgets/appbar/appbar.dart';
import 'package:pasal/features/personalization/screens/address/add_new_address.dart';
import 'package:pasal/features/personalization/screens/address/widgets/single_address.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  // ignore: use_super_parameters
  const UserAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: PColors.primaryColor,
          onPressed: () => Get.to(() => const AddNewAddressScreen()),
          child: const Icon(Iconsax.add, color: PColors.white)),
      appBar: PAppBar(
        showBackArrow: false,
        title:
            Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              PSingleAddress(selectedAddress: false),
              PSingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
