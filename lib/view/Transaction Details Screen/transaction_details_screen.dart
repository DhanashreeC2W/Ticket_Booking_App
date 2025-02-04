import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Navigation%20Bar/navaigationbar.dart';
import 'package:ticket_booking_app/view/Transaction%20Details%20Screen/Widget/refund_ticket_button_widget.dart';
import 'package:ticket_booking_app/view/Transaction%20Details%20Screen/Widget/top_container.dart';
import 'package:ticket_booking_app/view/Transaction%20Details%20Screen/Widget/transaction_details_screen_widget.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';
import 'package:ticket_booking_app/view/Widgets/total_container_widget.dart';

class TransactionDetailsScreen extends StatefulWidget {
  const TransactionDetailsScreen({super.key});

  @override
  State<TransactionDetailsScreen> createState() =>
      _TransactionDetailsScreenState();
}

class _TransactionDetailsScreenState extends State<TransactionDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = Get.width;
    final deviceHeight = Get.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.only(
          top: deviceHeight * 0.03,
          left: deviceWidth * 0.04, //16
          right: deviceWidth * 0.04, //16
          bottom: deviceHeight * 0.02, //26
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///BACK BUTTON
            const BackButtonWidget(),
            SizedBox(
              height: deviceHeight * 0.04,
            ),

            ///HEADING OF THE SCREEN
            Text(
              "Transaction Details",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(23, 24, 24, 1),
                fontSize: deviceHeight * 0.029,
              ),
            ),
            const TopContainer(),
            SizedBox(
              height: deviceHeight * 0.09,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                ///TRANSACTION DETAILS USING WIDGETS
                children: [

                  TransactionDetailsScreenWidget(
                    transactionDetail: "Status",
                    transactionDetailValue: "Success",
                  ),
                  TransactionDetailsScreenWidget(
                      transactionDetail: "Invoice",
                      transactionDetailValue: "INV23124131332"),
                  TransactionDetailsScreenWidget(
                      transactionDetail: "Transaction Date",
                      transactionDetailValue: "Wed, 18 Oct 2022"),
                  TransactionDetailsScreenWidget(
                      transactionDetail: "Payment Method",
                      transactionDetailValue: "Paytren"),
                ],
              ),
            ),

            ///TOTAL CONTAINER USING WIDGET
            const TotalContainerWidget(),

            ///BUTTON USING WIDGET
            const RefundTicketButtonWidget(),

            ///ENTER BUTTON WHICH NAVIGATES TO HOME SCREEN
            GestureDetector(
              onTap: () => Get.to(() => const Navaigationbar()),
              child: const ButtonWidget(
                buttonText: "Enter",
                buttonColor: Color.fromRGBO(0, 100, 210, 1),
                isFullWidth: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
