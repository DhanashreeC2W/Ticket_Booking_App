import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Booking%20Details%20Screen/Widgets/container_widget.dart';
import 'package:ticket_booking_app/view/Screens/Booking%20Details%20Screen/Widgets/extra_protection_card_widget.dart';
import 'package:ticket_booking_app/view/Screens/Booking%20Details%20Screen/Widgets/first_container_widget.dart';
import 'package:ticket_booking_app/view/Screens/Passenger%20Info%20Screen/passenger_info_screen.dart';
import 'package:ticket_booking_app/view/Screens/Payment%20Details%20Screen/Widgets/payments_deatils_widget.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screen/Widgets/settings_bold_catergory_widget.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';
import 'package:ticket_booking_app/view/Widgets/total_container_widget.dart';
import '../../Widgets/back_button_widget.dart';
import 'Widgets/bottomsheet_weight_container.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
   
    void baggageBottomSheet() {
      showModalBottomSheet(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          context: context,
          builder: (context) {
            return Padding(
                padding: EdgeInsets.only(
                  bottom: deviceHeight * 0.017,
                  top: deviceHeight * 0.017,
                  left: deviceWidth * 0.04,
                  right: deviceWidth * 0.04,
                ),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                    height: 3,
                    width: deviceWidth * 0.15,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 197, 197, 199),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),

                  ///TOP TEXT OF THE BOTTOMSHEET
                  Text(
                    "Add Baggage",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 22, 52, 1),
                      fontSize: deviceHeight * 0.027,
                    ),
                  ),

                  const BottomsheetWeightContainer(),

                  ///TOTAL CONTAINER USING WIDGET
                  const TotalContainerWidget(),

                  ///ADD BAGAGE BUTTON
                  const ButtonWidget(
                    buttonText: "Add Bagage",
                    buttonColor: Color.fromRGBO(0, 100, 210, 1),
                    buttonIcon: Icon(Icons.add_circle_rounded),
                    isFullWidth: true,
                    isIconFront: true,
                  )
                ]));
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
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const PassengerInfoScreen());
                    },
                    child: ContainerWidget(
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
                  ),

                  ///FACILITY CATEGORY
                  const SettingsBoldCatergoryWidget(
                      settingsCatergory: "Facility"),
                  GestureDetector(
                    onTap: () {
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
