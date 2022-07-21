import 'package:flutter/material.dart';
import 'Onboarding_Screens/GetStarted_Screen.dart';
import 'Onboarding_Screens/Onboarding_Mockup_Screen.dart';
import 'Onboarding_Screens/Splash_Screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'splash',
      routes: {
        'splash': (context)=> SplashScreen(),
        'getStarted': (context)=> GetStarted(),
        'OnboardingMockupScreen': (context)=> OnboardingMockupScreen(),
      },
    );
  }
}