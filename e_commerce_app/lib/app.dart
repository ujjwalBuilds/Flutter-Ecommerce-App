import 'package:e_commerce_app/features/authentication/screens/Onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Use this class to setup themes,intitial bindings,any animations
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      darkTheme: ThemeData(),
      home: const OnBoardingScreen(),
    );
  }
}

