import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchCardWidget extends StatelessWidget {
  const SearchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    log("${deviceHeight * 0.018}");
    return Container(
      height: deviceHeight * 0.256,
      width: deviceWidth * 0.608,
      margin: EdgeInsets.only(bottom: deviceHeight * 0.022),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(255, 255, 255, 1)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "LGA",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(34, 49, 63, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.022,
                ),
              ),
              Image.asset("assets/icons/flight_trip_icon.png"),
              Text(
                "DAD",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(34, 49, 63, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.022,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New York",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(128, 137, 145, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.014, //12
                ),
              ),
              Text(
                "23:00 hours",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(34, 49, 63, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.014,
                ),
              ),
              Text(
                "Da Nang",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(128, 137, 145, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.014, //12
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "8:00 AM",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(34, 49, 63, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.018, //16
                ),
              ),
              Text(
                "7:00 AM",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(34, 49, 63, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.018, //16
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "August 28, 2021",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(128, 137, 145, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.014, //12
                ),
              ),
              Text(
                "August 29, 2021",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(128, 137, 145, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.014, //12
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
