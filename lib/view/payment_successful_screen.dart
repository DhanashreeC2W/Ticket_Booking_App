import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/widget/button_widget.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  State createState() => _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    log("${deviceHeight * 0.035}");
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 100, 210, 1),
      body: Padding(
        padding: EdgeInsets.only(
            top: deviceHeight * 0.023,
            left: deviceWidth * 0.04, //16
            right: deviceWidth * 0.04 //16
            ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/celebration.png"),
              SizedBox(child: Column(
                children: [
                  Text(
                "Order confirmed",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: deviceHeight * 0.035,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
              SizedBox(
                
                width: deviceWidth,
                child: Text(
                  "Thank you for your order. You will receive email confirmation shortly.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: deviceHeight * 0.023,
                  ),
                ),
              ),
                ],
              ),),
              ButtonWidget(
                buttonText: "See Details",
                buttonColor: const Color.fromRGBO(255,255,255,1),
                buttonIcon: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
