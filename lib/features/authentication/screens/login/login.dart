
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: RSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const RLoginHeader(),

              /// Form
              const RLoginForm(),

              /// Divider
              RFormDivider(dividerText: RTexts.orSignInWith.capitalize!,),
              const SizedBox(height: RSizes.spaceBtwSections),

              /// Footer
              const RSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}


