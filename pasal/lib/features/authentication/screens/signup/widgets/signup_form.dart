import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';

class PSignupForm extends StatelessWidget {
  const PSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: 'TTexts.firstName',
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: PSizes.spaceBtnInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: 'TTexts.lastName',
                      prefixIcon: Icon(Iconsax.user)),
                ),
              )
            ],
          ),

          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: 'TTexts.username',
                prefixIcon: Icon(Iconsax.user_edit)),
          ),

          // Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: 'TTexts.email', prefixIcon: Icon(Iconsax.direct)),
          ),

          // Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: 'TTexts.phoneNumber',
                prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: PSizes.spaceBtnInputFields),

          // Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: 'TTexts.password',
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: PSizes.spaceBtnSections,
          ),

          // Terms and Conditions checkbox
          const PTermsAndConditionCheckbox(),

          const SizedBox(height: PSizes.spaceBtnSections),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(PTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
