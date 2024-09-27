import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/confirm_pin_screen.dart';
import 'package:ticket_booking_app/view/onboard_screen.dart';
import 'package:ticket_booking_app/view/passcode_screen.dart';
import 'package:ticket_booking_app/view/payment_details_screen.dart';
import 'package:ticket_booking_app/view/setpin_screen.dart';
import 'package:ticket_booking_app/view/Screens/Transaction%20Details%20Screen/transaction_details_screen.dart';
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