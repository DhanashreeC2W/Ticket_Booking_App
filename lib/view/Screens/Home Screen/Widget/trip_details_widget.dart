import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripDetailsWidget extends StatelessWidget {
  final String headingText;
  final Icon icon;
  final String data;
  const TripDetailsWidget(
      {super.key,
      required this.headingText,
      required this.data,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///HEADING TEXT OF THE CONTAINER
        headingText == "To"
        ///ROW FOR EXCHANGE BUTTON
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    headingText,
                    style: GoogleFonts.inter(
                        color: const Color.fromRGBO(34, 49, 63, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: deviceHeight * 0.019),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(3),
                   child: Image.asset("assets/images/exchange.png"),
                 )
                ],
              )
            : Text(
                headingText,
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(34, 49, 63, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: deviceHeight * 0.019),
              ),
              const SizedBox(height: 7,),
              ///DETAILS CONTAINER INCUDIN ICON AND DATA
        Container(
          width: deviceWidth,
          height: deviceHeight * 0.065, //48
          margin:
              headingText == "From" ? null : const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.only(
            left: 10,
          ),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 246, 246, 1),
              border: Border.all(
                color: const Color.fromRGBO(230, 232, 233, 1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Icon(
                icon.icon,
                color: const Color.fromRGBO(0, 100, 210, 1),
                size: deviceWidth * 0.053,
              ),
              SizedBox(
                width: deviceWidth * 0.02,
              ),
              Text(
                data,
                style: GoogleFonts.inter(
                    color: const Color.fromRGBO(34, 49, 63, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: deviceHeight * 0.018),
              )
            ],
          ),
        ),
      ],
    );
  }
}
