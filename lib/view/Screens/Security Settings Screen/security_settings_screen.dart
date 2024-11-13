import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Security%20Settings%20Screen/Widgets/radio_and_swich_card_widget.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';

class SecuritySettingsScreen extends StatelessWidget {
  const SecuritySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.018}");
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 243, 246, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        surfaceTintColor: const Color.fromRGBO(255, 255, 255, 1),
        leading: const BackButtonWidget(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Security Settings",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(23, 24, 24, 1),
              fontSize: deviceHeight * 0.029,
            ),
          ),
          const RadioAndSwichCardWidget(
            radioValue: 1,
            settingsCatergory: "Credit Card",
            subCategory: "Double Verfication",
            description:
                "Enter CVV & OTP code for more secure payment verification.",
            groupValue: 0,
            widgetType: WidgetType.radio,
          ),
          const RadioAndSwichCardWidget(
            radioValue: 2,
            isCategory: false,
            subCategory: "Single Verification",
            description:
                "Enter CVV & OTP code for a swift & hassle-free payment verification.",
            settingsCatergory: "",
            widgetType: WidgetType.radio,
            groupValue: 0,
          )
        ],
      ),
    );
  }
}
