import 'package:flutter/material.dart';

import '../helpers/Onboarding_Mockup_Card.dart';

class OnboardingMockupScreen extends StatelessWidget {
  const OnboardingMockupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       // backgroundColor: Colors.green,
        body: MockupCard(),

      ),
    );
  }
}
