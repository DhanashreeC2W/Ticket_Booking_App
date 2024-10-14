import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Booking%20Details%20Screen/Widgets/extra_protection_card_widget.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/Widgets/settings_bold_catergory_widget.dart';
import '../../Widgets/back_button_widget.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.014}");
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
            padding: EdgeInsets.only(
              top: deviceHeight * 0.03,
              left: deviceWidth * 0.04, //16
              right: deviceWidth * 0.04, //16
              bottom: deviceHeight * 0.02, //26
            ),
            child: SizedBox(
                height: deviceHeight / 1.4,
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///BACK BUTTON
                      const BackButtonWidget(),

                      ///SCREEN NAME AFTER BACKBUTTON
                      Text(
                        "Search Flights",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(23, 24, 24, 1),
                          fontSize: deviceHeight * 0.029,
                        ),
                      ),
                      const SettingsBoldCatergoryWidget(
                          settingsCatergory: 'Contact Details'),
                      Text(
                        "(For E-Ticket/Voucher)",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(37, 40, 49, 0.5),
                          fontSize: deviceHeight * 0.014,
                        ),
                      ),
                      ExtraProtectionCardWidget()
                    ]))));
  }
}
