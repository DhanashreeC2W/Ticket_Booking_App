import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
///WIDGET FOR REFUND BUTTON IN TRANSACTION DETAILS SCREEN
class RefundTicketButtonWidget extends StatelessWidget {
  const RefundTicketButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = Get.width;
    final deviceHeight =Get.height;
    return Container(
      alignment: Alignment.center,
      height: deviceHeight * 0.053,
      width: deviceWidth,
      margin: EdgeInsets.only(
          top: deviceHeight * 0.021, bottom: deviceHeight /5),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(252, 233, 233, 1),
          borderRadius: BorderRadius.circular(8)),
          ///ROW FOR TEXT AND ICON IN THE CUSTOM BUTTON
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Refund or Reschedule Ticket",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(224, 30, 30, 1),
              fontSize: deviceHeight * 0.018,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            Icons.arrow_circle_right_sharp,
            color: const Color.fromRGBO(224, 30, 30, 1),
            size: deviceWidth * 0.04,
          ),
        ],
      ),
    );
  }
}
