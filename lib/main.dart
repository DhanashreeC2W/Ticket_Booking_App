import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/Screens/Account%20Screen/account_screen.dart';
import 'package:ticket_booking_app/view/Screens/Delete%20Account%20Screen/delete_account.dart';
import 'package:ticket_booking_app/view/Screens/Home%20Screen/home_screen.dart';
import 'package:ticket_booking_app/view/Screens/Search%20Result%20Screen/search_result_screen.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchResultScreen(),
    );
  }
}