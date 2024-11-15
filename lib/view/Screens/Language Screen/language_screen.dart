import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Language%20Screen/Widgets/language_radio_button_widget.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screen/Widgets/settings_bold_catergory_widget.dart';

import '../../Widgets/back_button_widget.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight =Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.016}");
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
            padding: EdgeInsets.only(
              top: deviceHeight * 0.03,
              left: deviceWidth * 0.04, //16
              right: deviceWidth * 0.04, //16
              bottom: deviceHeight * 0.02, //26
            ),
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///BACK BUTTON
                  const BackButtonWidget(),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),

                  ///SCREEN NAME AFTER BACKBUTTON
                  Text(
                    "LANGUAGE",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(23, 24, 24, 1),
                      fontSize: deviceHeight * 0.029,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),

                  ///LANGUAGE CATEGORY USING WIDGET
                  const SettingsBoldCatergoryWidget(
                      settingsCatergory: "Language"),

                  ///TYPES OF LANGUAGE BY USING WIDGET
                  const LanguageRadioButtonWidget(
                    languageNAme: "English",
                    radioValue: 1,
                  ),
                  const LanguageRadioButtonWidget(
                    languageNAme: "Vietnamese",
                    radioValue: 2,
                  ),
                  const LanguageRadioButtonWidget(
                    languageNAme: "French",
                    radioValue: 3,
                  )
                ])));
  }
}
