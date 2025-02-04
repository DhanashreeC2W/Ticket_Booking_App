import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Passcode%20Screen/passcode_screen.dart';
import 'package:ticket_booking_app/view/Select%20Seat%20Screen/select_seat_screen.dart';

import '../../Widgets/button_widget.dart';

class PaymentsDeatilsWidget extends StatelessWidget {
  final String buttonName;
  const PaymentsDeatilsWidget({super.key, required this.buttonName});

  /// BOTTOMSHEET ON THE TAP OF PROCEED THE PAYMENT BUTTON
  void openBottomSheet(
      BuildContext context, double deviceHeight, double deviceWidth) {
    showModalBottomSheet(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        context: context,
        builder: (context) {
          //PADDING FOR BOTTONSHEET
          return Padding(
            padding: EdgeInsets.only(
              bottom: deviceHeight * 0.017,
              top: deviceHeight * 0.017,
              left: deviceWidth * 0.04,
              right: deviceWidth * 0.04,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 3,
                  width: deviceWidth * 0.15,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 197, 197, 199),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),

                ///HEADING TEXT OF THE BOTTOMSHEET
                Text(
                  "Continue with Touch ID to Proceed the payment",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(13, 22, 52, 1),
                    fontSize: deviceHeight * 0.027,
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),

                ///FINGERPRINT IMAGE
                SvgPicture.asset("assets/svg/finger.svg"),

                SizedBox(
                  height: deviceHeight * 0.05,
                ),

                ///BUTTON NAVIGATES TO PASSCODE SCREEN
                GestureDetector(
                  onTap: () => Get.to(() => const PasscodeScreen()),
                  child: const ButtonWidget(
                      isFullWidth: true,
                      buttonText: "Use Passcode Instead",
                      buttonColor: Color.fromRGBO(242, 243, 246, 1)),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;

    ///ROW FOR SUBTOTAL AND BUTTON
    return Row(
      children: [
        ///COLUMN FOR SUBTOTAL TEXT AND PRICE
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///SUBTOTAL TEXT WITH ICON
            Row(
              children: [
                Text(
                  "Subtotal",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(128, 128, 128, 1),
                    fontSize: deviceHeight * 0.017,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: const Color.fromRGBO(0, 100, 210, 1),
                  size: deviceHeight * 0.03,
                ),
              ],
            ),

            ///TOTAL TEXT
            Text(
              "\$132",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(13, 22, 52, 1),
                fontSize: deviceHeight * 0.033,
              ),
            )
          ],
        ),
        const Spacer(),

        ///BUTTON
        GestureDetector(
          onTap: () {
            ///IF IT IS PROCEED THE PAYMENT BUTTON USED ON PAYMENT DETAILS SCREEN IT WILL OPEN BOTTON SHEET
            ///AND THIS WIDGET IS ALSO USED ON BOOKING DETAILS SCREEN
            ///FOR THAT IT WILL NAVIGATE TO SELECT SEAT SCREEN
            buttonName == "Proceed The Payment"
                ? openBottomSheet(context, deviceHeight, deviceWidth)
                : Get.to(() => const SelectSeatScreen());
          },
          child: ButtonWidget(
            buttonText: buttonName,
            buttonColor: const Color.fromRGBO(0, 100, 210, 1),
            buttonIcon: const Icon(Icons.check_circle),
          ),
        )
      ],
    );
  }
}
