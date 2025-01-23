import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Booking%20Details%20Screen/booking_details_screen.dart';
import 'package:ticket_booking_app/view/Contact%20Details%20Screen/Widget/info_container_widget.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';
import 'package:ticket_booking_app/view/Widgets/radio_button_with_text_widget.dart';

import '../Widgets/back_button_widget.dart';

class PassengerInfoScreen extends StatefulWidget {
  const PassengerInfoScreen({super.key});

  @override
  State<PassengerInfoScreen> createState() => _PassengerInfoScreenState();
}

class _PassengerInfoScreenState extends State<PassengerInfoScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  int? _genderGroup;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///BACK BUTTON
              const BackButtonWidget(),
              SizedBox(
                height: deviceHeight * 0.04,
              ),

              ///SCREEN NAME
              Text(
                "Passenger Info",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(23, 24, 24, 1),
                  fontSize: deviceHeight * 0.022,
                ),
              ),

              ///ROW FOR TWO RADIO BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///RADIO BUTTON 1
                  RadioButtonWithTextWidget(
                    buttonName: "Male",
                    groupVal: _genderGroup,
                    buttonVal: 0,
                  ),

                  ///RADIO BUTTON 2
                  RadioButtonWithTextWidget(
                    buttonName: "Female",
                    groupVal: _genderGroup,
                    buttonVal: 1,
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.03,
              ),

              ///INFORMATION CONTAINERS USING WIDGET
              InfoContainerWidget(
                infoType: "Full Name",
                controller: _nameController,
              ),
              InfoContainerWidget(
                  infoType: "Email Address", controller: _emailController),
              InfoContainerWidget(
                  infoType: "ID card number", controller: _idController),

              ///MESSEGE AFTER INFORMATION CONTAINER
              Text(
                "This contact is for e-ticket and refund/rescheduling",
                style: GoogleFonts.inter(
                    fontSize: deviceHeight * 0.014,
                    color: const Color.fromRGBO(128, 128, 128, 1),
                    fontWeight: FontWeight.w400),
              ),

              ///SAVE CHANGES BUTTON
              Padding(
                padding: EdgeInsets.only(top: deviceHeight * 0.05),
                child: GestureDetector(
                  onTap: () => Get.offAll(const BookingDetailsScreen()),
                  child: const ButtonWidget(
                    buttonText: "Save changes",
                    buttonColor: Color.fromRGBO(0, 100, 210, 1),
                    isFullWidth: true,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
