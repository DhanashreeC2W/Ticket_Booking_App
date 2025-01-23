
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Booking%20Details%20Screen/booking_details_screen.dart';
import 'package:ticket_booking_app/view/Search%20Result%20Screen/widget/text_format.dart';
import 'package:dotted_separator/dotted_separator.dart';

class SearchCardWidget extends StatelessWidget {
  const SearchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    ///SEARCH CARD WIDGET
    return GestureDetector(
      onTap: () => Get.to(()=>const BookingDetailsScreen()),
      child: Container(
        height: deviceHeight * 0.24,
        width: deviceWidth * 0.608,
        margin: EdgeInsets.only(bottom: deviceHeight * 0.022),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(deviceHeight * 0.018),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextFormat(data: "LGA"),
                      SvgPicture.asset(
                        "assets/svg/flight_trip_icon.svg",
                        width: deviceWidth / 1.9,
                        fit: BoxFit.cover,
                      ),
                      const TextFormat(data: "DAD"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextFormat(data: "New York"),
                      Text(
                        "23:00 hours",
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(34, 49, 63, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: deviceHeight * 0.014,
                        ),
                      ),
                      const TextFormat(data: "Da Nang"),
                    ],
                  ),
                  SizedBox(height: deviceHeight * 0.03),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormat(data: "8:00 AM"),
                      TextFormat(data: "7:00 AM"),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormat(data: "August 28, 2021"),
                      TextFormat(data: "August 29, 2021"),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left circle
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 100, 210, 1),
                    shape: BoxShape.circle,
                  ),
                ),
                // Dotted separator
                Expanded(
                  child: DashedLine(
                    height: 2,
                    width: deviceWidth,
                    axis: Axis.horizontal,
                    dashWidth: 9,
                    dashSpace: 3,
                    strokeWidth: 1.7,
                    color: const Color.fromRGBO(230, 232, 233, 1),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                ),
                // Right circle
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 100, 210, 1),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(left: deviceHeight * 0.018,right: deviceHeight * 0.018),
              child: Row(
                children: [
                  SvgPicture.asset("assets/svg/qatar_logo.svg"),
                  const TextFormat(data: "Qatar Airway"),
                  const Spacer(),
                  const TextFormat(data: "\$ 340")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
