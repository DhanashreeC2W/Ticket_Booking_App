import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/onboard_screen.dart';
import 'package:ticket_booking_app/view/payment_successful_screen.dart';
import 'package:ticket_booking_app/view/signin_screen.dart';
import 'package:ticket_booking_app/view/signup_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentSuccessfulScreen(),
    );
  }
}
