import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    log("${deviceHeight * 0.023}");
    return Scaffold(
      backgroundColor: Colors.blue,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const BackButtonWidget(
          isWhiteColor: true,
        ),
        centerTitle: true,
        title: Text(
          "Search Flights",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontSize: deviceHeight * 0.023,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: deviceHeight * 0,
          left: deviceWidth * 0.04, //16
          right: deviceWidth * 0.04, //16
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: deviceHeight,
              width: deviceWidth,
              padding: const EdgeInsets.only(top: 50),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/map.png",
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}