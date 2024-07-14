import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pasal/utils/constants/sizes.dart';
import 'package:pasal/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              // Title
              Text(PTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              // form
              Form(
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
                        labelText: 'TTexts.email',
                        prefixIcon: Icon(Iconsax.direct)),
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
                  )

                  // Terms and Conditions checkbox

                  // Sign Up Button
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
