import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Confirm%20Pin%20Screen/confirm_pin_screen.dart';
import 'package:ticket_booking_app/view/Payment%20Successful%20Screen/payment_successful_screen.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';

import 'package:ticket_booking_app/view/Widgets/button_widget.dart';

///COMMON WIDGET FOR PIN
class NumberPinWidget extends StatelessWidget {
  final String pinType;

  ///PASSCODE , SETPIN ETC
  final String subTitle;

  const NumberPinWidget(
      {super.key, required this.pinType, required this.subTitle});
  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;

    return Padding(
      padding: EdgeInsets.only(
        top: deviceHeight * 0.03,
        left: deviceWidth * 0.04, //16
        right: deviceWidth * 0.04, //16
        bottom: deviceHeight * 0.03,
      ),
      child: SizedBox(
        height: deviceHeight * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///BACK BUTTON AT TOP OF THE SCREEN
            const BackButtonWidget(),

            ///HEADING TEXT
            Text(
              pinType,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(13, 22, 52, 1),
                fontSize: deviceWidth * 0.12,
              ),
            ),

            ///SUBTITLE AFTER HEADING
            Text(
              subTitle,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(37, 40, 49, 0.7),
                fontSize:
                    //  deviceHeight * 0.016,
                    deviceWidth * 0.035,
              ),
            ),

            ///FORGET PASSWORD TEXT FOR PASSCODE SCREEN
            pinType == "Passcode"
                ? Text(
                    "Forget passcode?",
                    style: GoogleFonts.inter(
                      fontSize: deviceWidth * 0.035,
                      color: const Color.fromRGBO(0, 100, 210, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                : const SizedBox(),

            ///OTPTEXTFEILD WIDGET
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              numberOfFields: 6,
              showFieldAsBox: true,
              autoFocus: true,
              onSubmit: (value) => Get.to(() => const ConfirmPinScreen()),
              filled: true,
              enabledBorderColor: Colors.transparent,
              focusedBorderColor: Colors.transparent,
              fillColor: const Color.fromRGBO(244, 244, 244, 1),
              cursorColor: const Color.fromRGBO(13, 13, 13, 0.1),
            ),

            ///CONDITION IF ITS PASSCODE SCREEN IT WILL GET ENTER BUTTON ELSE NOTING
            pinType == "Passcode"
                ? GestureDetector(
                    onTap: () {
                      Get.to(() => const PaymentSuccessfulScreen());
                    },
                    child: const ButtonWidget(
                      buttonText: "Enter",
                      buttonColor: Color.fromRGBO(0, 100, 210, 1),
                      isFullWidth: true,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
