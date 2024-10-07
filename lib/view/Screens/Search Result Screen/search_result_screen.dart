// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Search%20Result%20Screen/widget/search_card_widget.dart';

import '../../Widgets/back_button_widget.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    // log("${deviceHeight * 0.038}");
    return Scaffold(
        backgroundColor: const Color.fromRGBO(0, 100, 210, 1),
        //extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: SizedBox(
            height: deviceHeight,
            width: deviceWidth,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                  top: deviceHeight * 0.03,
                  left: deviceWidth * 0.04, //16
                  right: deviceWidth * 0.04, //16
                ),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: deviceHeight,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Global Map.png"))),
                      )
                      // Stack(
                      //   children: [
                      //     Image.asset(
                      //       "assets/images/Global Map.png",
                      //       fit: BoxFit.cover,
                      //       width: deviceWidth,
                      //     ),
                      //     const Positioned(
                      //       child: BackButtonWidget(
                      //         isWhiteColor: true,
                      //       ),
                      //     ),
                      //     Positioned(
                      //         left: deviceWidth / 3.6,
                      //         child: Text(
                      //           "Search Flights",
                      //           style: GoogleFonts.inter(
                      //             color: const Color.fromRGBO(255, 255, 255, 1),
                      //             fontWeight: FontWeight.w500,
                      //             fontSize: deviceHeight * 0.022,
                      //           ),
                      //         )),
                      //     Positioned(
                      //       top: 26,
                      //         child: SizedBox(
                      //           height: deviceHeight,
                      //           width: deviceWidth,
                      //           child: ListView.builder(
                      //             physics:BouncingScrollPhysics(),
                      //             itemCount: 4,
                      //             itemBuilder: (context, index) => SearchCardWidget(),
                      //           ),
                      //         ))
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
