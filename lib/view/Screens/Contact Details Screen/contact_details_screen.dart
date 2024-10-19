import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Contact%20Details%20Screen/Widget/info_container_widget.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';
import 'package:ticket_booking_app/view/Widgets/radio_button_with_text_widget.dart';

import '../../Widgets/back_button_widget.dart';

class ContactDetailsScreen extends StatefulWidget {
  const ContactDetailsScreen({super.key});

  @override
  State<ContactDetailsScreen> createState() => _ContactDetailsScreenState();
}

class _ContactDetailsScreenState extends State<ContactDetailsScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  int? _genderGroup;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.022}");
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
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButtonWidget(),
              Text(
                "Contact Person Details",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(23, 24, 24, 1),
                  fontSize: deviceHeight * 0.022,
                ),
              ),
              Row(
                children: [
                  RadioButtonWithTextWidget(
                    buttonName: "Male",
                    groupVal: _genderGroup,
                    buttonVal: 0,
                  ),
                  RadioButtonWithTextWidget(
                    buttonName: "Female",
                    groupVal: _genderGroup,
                    buttonVal: 1,
                  ),
                ],
              ),
              InfoContainerWidget(
                infoType: "Full Name",
                controller: _nameController,
              ),
              InfoContainerWidget(
                  infoType: "Email Address", controller: _emailController),
              InfoContainerWidget(
                  infoType: "Country code", controller: _codeController),
              InfoContainerWidget(
                  infoType: "Phone number", controller: _numberController),
              InfoContainerWidget(
                  infoType: "ID card number", controller: _idController),
              const ButtonWidget(
                  buttonText: "Save changes",
                  buttonColor: Color.fromRGBO(0, 100, 210, 1),isFullWidth: true,)
            ],
          ),
        ));
  }
}
