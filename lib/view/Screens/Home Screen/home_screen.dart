import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './Widget/homescreen_container.dart';
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
    log("${deviceHeight * 0.038}");
    return Scaffold(
        backgroundColor: const Color.fromRGBO(0, 100, 210, 1),
        //extendBodyBehindAppBar: true,
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(
              top: deviceHeight * 0.03,
              left: deviceWidth * 0.04, //16
              right: deviceWidth * 0.04, //16
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: deviceHeight / 4.5,
                  width: deviceWidth,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/map.png",
                        fit: BoxFit.fill,
                        width: deviceWidth,
                      ),
                      const Positioned(
                        child: BackButtonWidget(
                          isWhiteColor: true,
                        ),
                      ),
                      Positioned(
                          left: deviceWidth / 3.6,
                          child: Text(
                            "Search Flights",
                            style: GoogleFonts.inter(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: deviceHeight * 0.022,
                            ),
                          )),
                      Positioned(
                          top: deviceHeight / 13,
                          child: Text(
                            "Discover \na new world",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontSize: deviceHeight * 0.038,
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          const HomescreenContainer()
        ]));
  }
}
