import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkMode(context);
    return Positioned(
        right: RSizes.defaultSpace,
        bottom: RDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () {
              OnboardingController.instance.nextPage();
            },
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? RColors.primary : RColors.black),
            child: const Icon(Iconsax.arrow_right3)));
  }
}
