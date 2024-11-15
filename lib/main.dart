import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/Screens/Navigation%20Bar/navaigationbar.dart';
import 'package:ticket_booking_app/view/Screens/Onboarding%20Screen/onboard_screen.dart';
import 'package:ticket_booking_app/view/Screens/Security%20Settings%20Screen/security_settings_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
