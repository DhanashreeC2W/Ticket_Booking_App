import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteAccountWidget extends StatelessWidget {
  final String? warnings;
  final String? boldWarning;
  const DeleteAccountWidget(
      {super.key,  this.warnings,  this.boldWarning});

  @override
  Widget build(BuildContext context) {
    final deviceHeight =Get.height;

    return Text.rich(TextSpan(children: [
      TextSpan(
        text: warnings,
        style: GoogleFonts.inter(
            fontSize: deviceHeight * 0.019,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(37, 40, 49, 1)),
      ),
      TextSpan(
        text: boldWarning,
        style: GoogleFonts.inter(
            fontSize: deviceHeight * 0.019,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(37, 40, 49, 1)),
      ),
    ])
    );
  }
}
