import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = Get.width;
    final deviceHeight = Get.height;
    return

        ///CONTAINER WITH BORDER NEXT TO HEADING
        Container(
      padding: EdgeInsets.all(deviceWidth * 0.03),
      margin: EdgeInsets.only(
          top: deviceHeight * 0.028, bottom: deviceHeight * 0.028), //20
      height: deviceHeight * 0.215,
      width: deviceWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: const Color.fromRGBO(242, 243, 246, 1), width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ///ROW FOR CONTAINER , TEXT , TEXT
          Row(
            children: [
              Container(
                width: deviceWidth * 0.083,
                height: deviceHeight * 0.019,
                margin: const EdgeInsets.only(right: 10), //
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(37, 40, 49, 0.2),
                  border: Border.all(
                      color: const Color.fromRGBO(37, 40, 49, 0.2),
                      width: 0.71),
                  borderRadius: BorderRadius.circular(4.96),
                ),
              ),
              Text(
                "Southwest Airlines",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(13, 22, 52, 1),
                  fontSize: deviceHeight * 0.016,
                ),
              ),
              const Spacer(),
              Text(
                "Executive",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(37, 40, 49, 0.5),
                  fontSize: deviceHeight * 0.015,
                ),
              ),
            ],
          ),

          ///2ND ROW
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "GTH",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(13, 22, 52, 1),
                  fontSize: deviceHeight * 0.019, //24
                ),
              ),
              Container(
                  height: deviceHeight * 0.0371,
                  width: deviceWidth * 0.149,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                        color: const Color.fromRGBO(13, 22, 52, 0.05),
                        width: 1),
                  ),

                  ///TO ROTATE FLIGHT ICON
                  child: Transform.rotate(
                    angle: 1.6,
                    child: Icon(
                      Icons.flight,
                      color: const Color.fromRGBO(0, 100, 210, 1),
                      size: deviceHeight * 0.02,
                    ),
                  )),
              Text(
                "KHQ",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(13, 22, 52, 1),
                  fontSize: deviceHeight * 0.019, //24
                ),
              ),
            ],
          ),

          ///ROW3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "14.00",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(37, 40, 49, 0.5),
                  fontSize: deviceHeight * 0.014, //12
                ),
              ),
              Text(
                "07.15",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(37, 40, 49, 0.5),
                  fontSize: deviceHeight * 0.014, //12
                ),
              ),
            ],
          ),

          ///ROW 4
          Row(
            children: [
              Icon(
                Icons.person,
                color: const Color.fromRGBO(0, 100, 210, 1),
                size: deviceHeight * 0.016,
              ),
              Text(
                " 2 Person",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(13, 22, 52, 1),
                  fontSize: deviceHeight * 0.014,
                ),
              ),
              Icon(
                Icons.bolt_outlined,
                color: const Color.fromRGBO(0, 100, 210, 1),
                size: deviceHeight * 0.016,
              ),
              Text(
                "Premium",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(13, 22, 52, 1),
                  fontSize: deviceHeight * 0.014,
                ),
              ),
              const Spacer(),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "IDR 350.000",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 22, 52, 1),
                      fontSize: deviceHeight * 0.016, //12
                    )),
                TextSpan(
                  text: "/Pax",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(37, 40, 49, 0.5),
                    fontSize: deviceHeight * 0.016, //12
                  ),
                ),
              ])),
            ],
          ),
          Row(
            children: [
              Container(
                height: deviceHeight * 0.022,
                width: deviceHeight * 0.022,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(37, 40, 49, 0.2)),
              ),
              Text("Matt Murdock",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(13, 22, 52, 1),
                    fontSize: deviceHeight * 0.016,

                    ///14
                  )),
              const Spacer(),
              Text("Edit",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 100, 210, 1),
                    fontSize: deviceHeight * 0.012,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
