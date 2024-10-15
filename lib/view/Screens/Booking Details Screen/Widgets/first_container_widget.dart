import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

///FIRST CONTAINER AT THE TOP OF BOOKING DETAILS SCREEN
class FirstContainerWidget extends StatelessWidget {
  const FirstContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.012}");

    ///MAIN CONTAINER
    return Container(
      width: deviceWidth,
      height: deviceHeight * 0.143,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(13, 22, 52, 0.05))),

      ///COLUMN CONTAINING ROW AND ANOTHER CONTAINER
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///ROW FOR CONTAINER , NAME AND EDIT ICON
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

          ///CONTAINER FOR EMAIL AND CONTACT NUMBER
          Container(
            width: deviceWidth,
            height: deviceHeight * 0.063,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border:
                    Border.all(color: const Color.fromRGBO(13, 22, 52, 0.05))),
            child: Column(
              children: [
                ///ROW FOR EMAIL ICON AND TEXT
                Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: const Color.fromRGBO(0, 100, 210, 1),
                      size: deviceHeight * 0.014,
                    ),
                    Text("imnotdaredevil@mail.com",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(37, 40, 49, 0.5),
                          fontSize: deviceHeight * 0.014,
                        ))
                  ],
                ),

                ///ROW FOR PHONE ICON AND TEXT
                Row(
                  children: [
                    Icon(
                      Icons.call_outlined,
                      color: const Color.fromRGBO(0, 100, 210, 1),
                      size: deviceHeight * 0.014,
                    ),
                    SizedBox(width: deviceWidth*0.01,),
                    Text("+628123223922",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(37, 40, 49, 0.5),
                          fontSize: deviceHeight * 0.014,
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
