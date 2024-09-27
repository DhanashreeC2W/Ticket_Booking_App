import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionDetailsScreenWidget extends StatelessWidget {
  final String? transactionDetail;
  final String? transactionDetailValue;
  const TransactionDetailsScreenWidget(
      {super.key,
      required this.transactionDetail,
      required this.transactionDetailValue});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.sizeOf(context).height;

    return Row(
      children: [
        Text(transactionDetail!,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(37, 40, 49, 0.7),
              fontSize: deviceHeight * 0.014,
            )),
        const Spacer(),
        Text(transactionDetailValue!,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              color: transactionDetailValue == "Success"
                  ? const Color.fromRGBO(30, 100, 210, 1)
                  : const Color.fromRGBO(13, 22, 52, 1),
              fontSize: deviceHeight * 0.014,
            )),
      ],
    );
  }
}
