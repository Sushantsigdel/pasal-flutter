import 'package:flutter/material.dart';
import 'package:pasal/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: PSizes.appBarHeight,
            left: PSizes.defaultSpace,
            bottom: PSizes.defaultSpace,
            right: PSizes.defaultSpace,
          ),
        ),
      ),
    );
  }
}
