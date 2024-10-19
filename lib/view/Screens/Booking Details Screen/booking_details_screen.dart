import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Booking%20Details%20Screen/Widgets/container_widget.dart';
import 'package:ticket_booking_app/view/Screens/Booking%20Details%20Screen/Widgets/extra_protection_card_widget.dart';
import 'package:ticket_booking_app/view/Screens/Booking%20Details%20Screen/Widgets/first_container_widget.dart';
import 'package:ticket_booking_app/view/Screens/Payment%20Details%20Screen/Widgets/payments_deatils_widget.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/Widgets/settings_bold_catergory_widget.dart';
import '../../Widgets/back_button_widget.dart';

class BookingDetailsScreen extends StatelessWidget {
  
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.016}");
     void baggageBottomSheet(){
      showModalBottomSheet(context: context, builder: (context){
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: deviceWidth*0.02,
                  height: deviceHeight*0.01,
                  color: const Color.fromRGBO(242,243,246,1),
                ),
              ),
              
            ],
          ),
        );
      });
    }
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///BACK BUTTON
                  const BackButtonWidget(),

                  ///SCREEN NAME AFTER BACKBUTTON
                  Text(
                    "Search Flights",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(23, 24, 24, 1),
                      fontSize: deviceHeight * 0.029,
                    ),
                  ),

                  ///TEXT AFTER SCREEN NAME
                  const SettingsBoldCatergoryWidget(
                      settingsCatergory: 'Contact Details'),

                  ///TEXT (For E-Ticket/Voucher)
                  Text(
                    "(For E-Ticket/Voucher)",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(37, 40, 49, 0.5),
                      fontSize: deviceHeight * 0.014,
                    ),
                  ),

                  ///TOP CONTAINER USING WIDGET
                  const FirstContainerWidget(),

                  ///CATEGORY
                  const SettingsBoldCatergoryWidget(
                      settingsCatergory: "Passenger Info"),

                  ///CONTENTS IN PASSENGER INFO CATEGORY
                  ContainerWidget(
                    isSwitch: true,
                    icon: null,
                    data: "Same As Contact Details",
                    textStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 22, 52, 1),
                      fontSize: deviceHeight * 0.014,
                    ),
                  ),
                  ContainerWidget(
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: deviceWidth * 0.05,
                    ),
                    data: "Selena Kayle",
                    textStyle: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 22, 52, 1),
                      fontSize: deviceHeight * 0.016,
                    ),
                  ),

                  ///FACILITY CATEGORY
                  const SettingsBoldCatergoryWidget(
                      settingsCatergory: "Facility"),
                  GestureDetector(
                    onTap:() {
                      baggageBottomSheet();
                    },
                    child: ContainerWidget(
                      descr: "Add extra baggage",
                      icon: Icon(
                        Icons.add_rounded,
                        size: deviceHeight * 0.03,
                      ),
                      data: "Baggage",
                      textStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(13, 22, 52, 1),
                        fontSize: deviceHeight * 0.014,
                      ),
                    ),
                  ),

                  ///EXTRA PROTECTION CATEGORY
                  const SettingsBoldCatergoryWidget(
                      settingsCatergory: "Extra Protection"),

                  ///CONTENTS IN EXTRA PROTECTION CATEGORY USING WIDGET
                  const ExtraProtectionCardWidget(),

                  ///WIDGET FOR SUBTOTAL AND BUTTON
                  const PaymentsDeatilsWidget(buttonName: "Select Seat"),
                ])));
  }
}
