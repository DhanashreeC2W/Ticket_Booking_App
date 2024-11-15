import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/Screens/Account%20Screen/account_screen.dart';
import 'package:ticket_booking_app/view/Screens/Home%20Screen/home_screen.dart';
import 'package:ticket_booking_app/view/Screens/Transaction%20Screen/transaction_screen.dart';

class NavbarController extends GetxController{
int currentIndex= 0;

  List<Widget> allScreensList = [
    HomeScreen(),
    TransactionScreen(),
    AccountScreen(),
  ];

  void onTap(int index){
    currentIndex = index;
    update();
  }

}