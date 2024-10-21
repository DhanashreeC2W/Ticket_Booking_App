import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Select%20Seat%20Screen/Widgets/booking_widget.dart';

import '../../Widgets/back_button_widget.dart';

class SelectSeatScreen extends StatelessWidget {
  const SelectSeatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.47}");
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(
              top: deviceHeight * 0.03,
              left: deviceWidth * 0.04, //16
              right: deviceWidth * 0.04, //16
              bottom: deviceHeight * 0.02, //26
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ///BACK BUTTON
              const BackButtonWidget(),
              SizedBox(
                height: deviceHeight * 0.04,
              ),

              ///SCREEN NAME
              Text(
                "Passenger Info",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(23, 24, 24, 1),
                  fontSize: deviceHeight * 0.022,
                ),
              ),
              const BookingWidget(),
            ])));
  }
}
