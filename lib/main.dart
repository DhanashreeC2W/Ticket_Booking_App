import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/Screens/Booking%20Details%20Screen/booking_details_screen.dart';
import 'package:ticket_booking_app/view/Screens/Contact%20Details%20Screen/contact_details_screen.dart';
import 'package:ticket_booking_app/view/Screens/Payment%20Details%20Screen/payment_details_screen.dart';
import 'package:ticket_booking_app/view/Screens/Select%20Seat%20Screen/select_seat_screen.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/notification_settings_screen.dart';
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
      home: SecuritySettingsScreen(),
    );
  }
}