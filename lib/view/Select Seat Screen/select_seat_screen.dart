
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Select%20Seat%20Screen/Widgets/booking_widget.dart';
import 'package:ticket_booking_app/view/Select%20Seat%20Screen/Widgets/slider_widget.dart';

import '../Widgets/back_button_widget.dart';

class SelectSeatScreen extends StatefulWidget {
  const SelectSeatScreen({super.key});

  @override
  State<SelectSeatScreen> createState() => _SelectSeatScreenState();
}

class _SelectSeatScreenState extends State<SelectSeatScreen> {
  bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(
              top: deviceHeight * 0.03,
              left: deviceWidth * 0.04, //16
              right: deviceWidth * 0.04, //16
              bottom: deviceHeight * 0.02, //26
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ///BACK BUTTON
              const BackButtonWidget(),
              SizedBox(
                height: deviceHeight * 0.03,
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

              ///SEAT BOOKING SECTION USING WIDGET
              const BookingWidget(),
              SizedBox(
                height: deviceHeight * 0.012,
              ),

              ///SEAT SELECTED CONTAINER WITH REMOVE LOGIC
              _isVisible

                  ///STACK FOR REMOVE ICON
                  ? Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 25, top: 10),
                          child: Container(
                            height: deviceHeight * 0.037,
                            width: deviceWidth * 0.193,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(0, 100, 210, 1),
                                borderRadius: BorderRadius.circular(32)),

                            ///ROW CONTAINIG ICON AND SEAT NUMBER
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: deviceHeight * 0.016,
                                ),
                                Text(
                                  "#1 5A",
                                  style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: deviceHeight * 0.015),
                                )
                              ],
                            ),
                          ),
                        ),

                        ///REMOVE ICON BUTTON
                        Positioned(
                          top: -8,
                          right: 2,
                          child: IconButton(
                            iconSize: deviceHeight * 0.022,
                            icon: Icon(Icons.remove_circle,
                                size: deviceHeight * 0.018,
                                color: const Color.fromRGBO(13, 22, 52, 1)),
                            onPressed: () {
                              setState(() {
                                // HIDES THE CONTAINER WHEN REMOVE ICON IS CLICKED
                                _isVisible = false;
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
                  ///SLIDER USING WIDGET
              const SliderWidget(),
            ])));
  }
}
