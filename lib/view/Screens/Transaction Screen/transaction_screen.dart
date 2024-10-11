import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/back_button_widget.dart';
import '../../Widgets/button_widget.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    log("${deviceHeight * 0.018}");
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.only(
          top: deviceHeight * 0.03,
          left: deviceWidth * 0.05,
          right: deviceWidth * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //BACK BUTTON AT TOP
            const BackButtonWidget(),
            SizedBox(
              height: deviceHeight * 0.03,
            ),

            ///TEXT AFTER BACK BUTTON
            Text(
              "Transaction",
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(23, 24, 24, 1),
                fontWeight: FontWeight.w600,
                fontSize: deviceHeight * 0.027,
              ),
            ),

            ///IMAGE
            SvgPicture.asset(
              "assets/svg/transaction_img.svg",
              width: deviceWidth,
              height: deviceHeight * 0.216,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: deviceHeight * 0.08,
            ),
            SizedBox(
              height: deviceHeight / 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Let’s go somewhere",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(23, 24, 24, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: deviceHeight * 0.022, //22,
                    ),
                  ),
                  Text(
                    "After book a trip you can manage orders and see E-ticket here.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(80, 83, 83, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: deviceHeight * 0.018, //16,
                    ),
                  ),
                  const ButtonWidget(
                    buttonText: "Book a trip",
                    buttonColor: Color.fromRGBO(0, 100, 210, 1),
                    isFullWidth: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
