import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';

///SETTINGS/EMAIL AND MOBILE NUMBER SCREEN
class EmailMobileNoScreen extends StatelessWidget {
  const EmailMobileNoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = Get.width;
    final deviceHeight = Get.height;
   
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.only(
          top: deviceHeight * 0.03,
          left: deviceWidth * 0.05,
          right: deviceWidth * 0.05,
        ),
        child: SizedBox(
          height: deviceHeight / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //BACK BUTTON AT TOP
              const BackButtonWidget(),

              ///TEXT AFTER BACK BUTTON
              Text(
                "Email and Mobile Number",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(23, 24, 24, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.027,
                ),
              ),

              ///ROW FOR VERIFEID ICON AND TEXT
              Row(
                children: [
                  Icon(
                    Icons.verified,
                    color: const Color.fromRGBO(137, 142, 142, 1),
                    size: deviceHeight * 0.025, //16
                  ),
                  SizedBox(width: deviceHeight * 0.012),
                  Text(
                    "Unverified",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(224, 30, 30, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: deviceHeight * 0.018,
                    ),
                  ),
                ],
              ),

              ///ROW FOR PHONE NUMBER AND EDIT OPTION
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+84932870464",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(23, 24, 24, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: deviceHeight * 0.025, //16,
                    ),
                  ),
                  const Icon(
                    Icons.edit_square,
                    color: Color.fromRGBO(0, 100, 210, 1),
                  ),
                ],
              ),

              ///ENTER BUTTON
              const ButtonWidget(
                buttonText: "Enter",
                buttonColor: Color.fromRGBO(0, 100, 210, 1),
                isFullWidth: true,
              ),

              ///TEXT
              Text(
                "Email",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(23, 24, 24, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: deviceHeight * 0.021,
                ),
              ),
              Text(
                "You will receive  every transcation & security information on this email.",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(37, 40, 49, 0.7),
                  fontWeight: FontWeight.w400,
                  fontSize: deviceHeight * 0.016,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
