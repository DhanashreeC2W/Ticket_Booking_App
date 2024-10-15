import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Contact%20Details%20Screen/contact_details_screen.dart';

import '../../../Widgets/button_widget.dart';
import '../../Payment Successful Screen/payment_successful_screen.dart';

class PaymentsDeatilsWidget extends StatelessWidget {
  final String buttonName;
  const PaymentsDeatilsWidget({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;

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
            Get.to(() => buttonName=="Proceed The Payment"? const PaymentSuccessfulScreen():const ContactDetailsScreen());
          },
          child:  ButtonWidget(
            buttonText:buttonName,
            buttonColor: const Color.fromRGBO(0, 100, 210, 1),
            buttonIcon: const Icon(Icons.check_circle),
          ),
        )
      ],
    );
  }
}
