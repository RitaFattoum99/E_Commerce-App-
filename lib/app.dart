import 'package:ecommerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Use this class to setup theme, intial Bindings, any animations and much more using Material Widget.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: RAppTheme.lightTheme,
      darkTheme: RAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
