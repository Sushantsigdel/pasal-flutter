import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pasal/features/authentication/screens/onboarding/onboarding.dart';
import 'package:pasal/utils/theme/theme.dart';
//  using this class to setup themes, initial Bindings, any animations, or any other initial setup

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
