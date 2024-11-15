
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Transaction%20Details%20Screen/transaction_details_screen.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';

///SCREEN AFTER ENTERING PASSCODE
class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  State createState() => _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
   
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///CELEBRATION IMAGE
              Image.asset("assets/images/celebration.png"),
              SizedBox(
                height: deviceHeight * 0.05,
              ),
              Column(
                children: [
                  ///ORDER CONFIRM TEXT
                  Text(
                    "Order confirmed",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: deviceHeight * 0.035,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  SizedBox(
                height: deviceHeight * 0.03,
              ),
                  Text(
                    "Thank you for your order. You will receive email confirmation shortly.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: deviceHeight * 0.023,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.05,
              ),
              ///SEE DETAILS BUTTON WHICH 
              ///NAVIGATES TO TRANSACTION DETAILS SECTION
              GestureDetector(
                onTap: () => Get.to(()=>const TransactionDetailsScreen()),
                child: const ButtonWidget(
                  buttonText: "See Details",
                  isFullWidth: true,
                  buttonColor: Color.fromRGBO(255, 255, 255, 1),
                  buttonIcon: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
