import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/Screens/Booking%20Details%20Screen/booking_details_screen.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/notification_settings_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookingDetailsScreen(),
    );
  }
}