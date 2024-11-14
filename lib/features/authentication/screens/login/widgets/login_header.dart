import 'package:flutter/material.dart';

import '../../../../../utils/constants/images_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class RLoginHeader extends StatelessWidget {
  const RLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? RImage.lightAppLogo : RImage.darkAppLogo),
        ),
        Text(
          RTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: RSizes.sm,
        ),
        Text(
          RTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
