import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/Widgets/settings_bold_catergory_widget.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';

class ExtraProtectionCardWidget extends StatelessWidget {
  const ExtraProtectionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.014}");
    return Container(
      padding: const EdgeInsets.all(10),
      height: deviceHeight * 0.214,
      width: deviceWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(13, 22, 52, 0.05))),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.verified_user,
                color: Color.fromRGBO(0, 100, 210, 1),
              ),
              SizedBox(
                width: deviceWidth * 0.02,
              ),
              const SettingsBoldCatergoryWidget(
                settingsCatergory: "Travel Insurance",
              ),
              const Spacer(),
              Text(
                "\$125",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(23, 24, 24, 1),
                  fontSize: deviceHeight * 0.027,
                ),
              ),
            ],
          ),
           Row(children: [
            Icon(
              Icons.check,
              color: Color.fromRGBO(45, 195, 198, 1),
              size: deviceWidth*0.045,
            ),
            SizedBox(
                width: deviceWidth * 0.013,
              ),
           Text("Coverage for Accidents up to \$10000",
            style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(37, 40, 49, 0.5),
                          fontSize: deviceHeight * 0.014,
                        ),
           )
          ]),
           Row(children: [
            Icon(
              Icons.check,
              color: Color.fromRGBO(45, 195, 198, 1),
              size: deviceWidth*0.045,
            ),
            SizedBox(
                width: deviceWidth * 0.013,
              ),
           Expanded(
             child: Text("Coverage for trip cancellation by passengers up to \$1250",
              style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(37, 40, 49, 0.5),
                            fontSize: deviceHeight * 0.014,
                          ),
             ),
           )
          ]),
          ButtonWidget(buttonText: "Add Insurance", buttonColor: Color.fromRGBO(242,243,246,1),buttonIcon: Icon(Icons.add_circle_rounded,color: Color.fromRGBO(0,100,210,1),),)
        ],
      ),
    );
  }
}
