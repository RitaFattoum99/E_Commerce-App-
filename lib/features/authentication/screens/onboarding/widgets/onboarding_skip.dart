import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: RDeviceUtils.gatAppBarHeight(),
        right: RSizes.defaultSpace,
        child: TextButton(onPressed: () {OnboardingController.instance.skipPage();}, child: const Text("Skip")));
  }
}