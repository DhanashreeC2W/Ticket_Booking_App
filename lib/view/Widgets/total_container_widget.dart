import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/Transaction Details Screen/Widget/transaction_details_screen_widget.dart';

///TOTAL CONTAINER WIDGET USED IN TRANSACTION DETAILS SCREEN,AND BOTTOMSHEETS
class TotalContainerWidget extends StatelessWidget {
  const TotalContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = Get.height;
    double deviceWidth = Get.width;

    ///MAIN CONTAINER
    return Container(
      width: deviceWidth,
      height: deviceHeight * 0.086,
      padding: const EdgeInsets.only(left: 20, right: 20),
      margin: EdgeInsets.only(
          top: deviceHeight * 0.021, bottom: deviceHeight * 0.021),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(13, 22, 52, 0.05),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),

      ///COLUMN FOR PERSON NAME AND TOTAL
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ///PERSON NAME WITH AMOUNT IN GREY STYLE
          Row(
            children: [
              Text("1. Matt Murdock",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(37, 40, 49, 0.7),
                    fontSize: deviceHeight * 0.014,
                  )),
              const Spacer(),
              Text("Rp. 210.000 ",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(37, 40, 49, 0.71),
                    fontSize: deviceHeight * 0.014,
                  ))
            ],
          ),

          ///TOTAL TEXT WITH AMOUNT USING WIDGET
          const TransactionDetailsScreenWidget(
              transactionDetail: "Total",
              transactionDetailValue: "Rp. 210.000"),
        ],
      ),
    );
  }
}
