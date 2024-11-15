import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'terms_conditions_checkbox.dart';

class RSignupForm extends StatelessWidget {
  const RSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Form(
        child: Column(
      children: [
        /// First & Last Name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: RTexts.firstName)),
            ),
            const SizedBox(width: RSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: RTexts.lastName)),
            ),
          ],
        ),
        const SizedBox(height: RSizes.spaceBtwInputFields),

        /// Username
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: RTexts.username)),
        const SizedBox(height: RSizes.spaceBtwInputFields),

        /// Email
        TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct), labelText: RTexts.email)),
        const SizedBox(height: RSizes.spaceBtwInputFields),

        /// Phone Number
        TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call), labelText: RTexts.phoneNo)),
        const SizedBox(height: RSizes.spaceBtwInputFields),

        /// Password
        TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: RTexts.password)),
        const SizedBox(height: RSizes.spaceBtwInputFields),

        /// Terms&conditions Checkbox
        const RTermsAndConditionsCheckbox(),
        const SizedBox(height: RSizes.spaceBtwSections),

        /// Sign Up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(RTexts.createAccount),
          ),
        )
      ],
    ));
  }
}

