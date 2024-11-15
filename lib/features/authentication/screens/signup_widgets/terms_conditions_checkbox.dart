import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
class RTermsAndConditionsCheckbox extends StatelessWidget {
  const RTermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: RSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: RTexts.iAgreeTo,
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: RTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? RColors.white : RColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? RColors.white : RColors.primary)),
          TextSpan(
              text: RTexts.and, style: Theme.of(context).textTheme.bodySmall),
        ]))
      ],
    );
  }
}
