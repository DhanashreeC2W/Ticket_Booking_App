import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionDetailsScreenWidget extends StatelessWidget {
  final String transactionDetail;
  final String transactionDetailValue;
  final bool? isBoldText;
  const TransactionDetailsScreenWidget(
      {super.key,
      required this.transactionDetail,
      this.isBoldText = true,
      required this.transactionDetailValue});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = Get.height;

    return Row(
      children: [
        ///TYPE OF THE DETAIL
        Text(transactionDetail,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(37, 40, 49, 0.7),
              fontSize: deviceHeight * 0.014,
            )),
        const Spacer(),

        ///VALUE OF THE DETAIL
        Text(transactionDetailValue,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,

              ///COLOR CONDITION HANDLED FOR SUCCESS DETAILVALUE
              color: transactionDetailValue == "Success"
                  ? const Color.fromRGBO(30, 100, 210, 1)
                  : const Color.fromRGBO(13, 22, 52, 1),
              fontSize: deviceHeight * 0.014,
            )),
      ],
    );
  }
}
