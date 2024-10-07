import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///RADIO BUTTON WIDGET FOR HOME SCREEN
class HomeRadioButtonWidget extends StatelessWidget {
  final String? tripType;
  const HomeRadioButtonWidget({super.key, this.tripType});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;

    return Row(
      children: [
        Radio(value: 1, groupValue: 0, onChanged: (value) {}),
        Text(
          tripType!,
          style: GoogleFonts.inter(
              color: const Color.fromRGBO(34, 49, 63, 1),
              fontWeight: FontWeight.w500,
              fontSize: deviceHeight * 0.019),
        ),
      ],
    );
  }
}
