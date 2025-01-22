import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/Screens/Account%20Screen/account_screen.dart';
import 'package:ticket_booking_app/view/Screens/Home%20Screen/home_screen.dart';
import 'package:ticket_booking_app/view/Screens/Transaction%20Screen/transaction_screen.dart';

/// NAVBAR CONTROLLER
/// CONTROLLER CLASS FOR MANAGING THE NAVIGATION BAR USING GETX.
class NavbarController extends GetxController {
  /// CURRENT INDEX OF THE SELECTED SCREEN
  /// DEFAULT VALUE IS 0 (HOME SCREEN).
  int currentIndex = 0;

  /// LIST OF ALL SCREENS FOR NAVIGATION
  List<Widget> allScreensList = const [
    HomeScreen(),
    TransactionScreen(),
    AccountScreen(),
  ];

  /// FUNCTION TO HANDLE TAPS ON NAVIGATION BAR ITEMS
  /// UPDATES THE CURRENT INDEX AND NOTIFIES LISTENERS.
  ///
  /// [index] - THE INDEX OF THE SELECTED ITEM.
  void onTap(int index) {
    currentIndex = index;
    update(); // TRIGGERS A REBUILD FOR DEPENDENT WIDGETS.
  }
}
