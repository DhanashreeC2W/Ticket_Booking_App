import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormat extends StatelessWidget {
  ///  `data` PARAMETER FOR THE TEXT WIDGET
  final String data;

  const TextFormat({super.key, required this.data});

  /// FUNCTION TO RETURN A TEXT WIDGET BASED ON THE `data` VALUE
  Text textWidget(double deviceHeight) {
    if (data == "LGA" ||
        data == "DAD" ||
        data == "8:00 AM" ||
        data == "7:00 AM" ||
        data == "\$ 340") {
      ///  TEXT WIDGET WITH LARGER FONT SIZES
      return Text(
        data,
        style: GoogleFonts.inter(
          color: const Color.fromRGBO(34, 49, 63, 1),
          fontWeight: FontWeight.w500,
          ///  FONT WEIGHT TO MEDIUM FOR PRIMARY TEXT
          fontSize: data == "LGA" || data == "DAD"
              ? deviceHeight * 0.022
              : deviceHeight * 0.018,
        ),
      );
    }

    /// CHECK IF `data` IS ONE OF THE SECONDARY TEXT VALUES
    else if (data == "New York" ||
        data == "Da Nang" ||
        data == "August 28, 2021" ||
        data == "Qatar Airway" ||
        data == "August 29, 2021") {
      /// RETURN TEXT WIDGET WITH SMALLER FONT SIZE
      return Text(
        data,
        style: GoogleFonts.inter(
          color: const Color.fromRGBO(128, 137, 145, 1),
          fontWeight: data == "New York" || data == "Da Nang"
              ? FontWeight.w500
              : FontWeight.w400,
          fontSize: deviceHeight * 0.014,
        ),
      );
    }

    /// RETURN EMPTY TEXT WIDGET IF `data` DOES NOT MATCH ANY OF THE CONDITIONS
    return const Text("");
  }

  @override
  Widget build(BuildContext context) {
   
    final deviceHeight = MediaQuery.sizeOf(context).height;

    /// RETURN THE TEXT WIDGET WITH CALCULATED STYLES
    return textWidget(deviceHeight);
  }
}
