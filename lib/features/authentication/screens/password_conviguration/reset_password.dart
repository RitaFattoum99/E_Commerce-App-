import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                  image: const AssetImage(RImage.deliveredEmailIllustration),
                  width: RHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: RSizes.spaceBtwSections),

              /// Title & SubTitle
              Text(RTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: RSizes.spaceBtwItems),

              Text(RTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: RSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(RTexts.done)),
              ),
              const SizedBox(height: RSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(RTexts.reSendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
