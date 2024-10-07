import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ticket_booking_app/view/Screens/Home%20Screen/Widget/home_radio_button_widget.dart';
import 'package:ticket_booking_app/view/Screens/Home%20Screen/Widget/trip_details_widget.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';

class HomescreenContainer extends StatefulWidget {
  const HomescreenContainer({super.key});

  @override
  State<HomescreenContainer> createState() => _HomescreenContainerState();
}

class _HomescreenContainerState extends State<HomescreenContainer> {
  
  void dateBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Padding(

            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                   width: MediaQuery.sizeOf(context).width,
                    child: DatePickerDialog(
                     // helpText: "Select Date",
                     currentDate: DateTime.now(),
                        firstDate: DateTime(2024), lastDate: DateTime(2025)),
                  ),
                ),
                const ButtonWidget(buttonText: "Search date", buttonColor:Color.fromRGBO(0,100,210,1),isFullWidth: true, )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    log("${deviceHeight * 0.008}");
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          top: deviceHeight * 0.03,
          left: deviceWidth * 0.06, //16
          right: deviceWidth * 0.06, //16
        ),
        height: deviceHeight,
        width: deviceWidth,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///ROW FOR 2 RADIO BUTTON
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const HomeRadioButtonWidget(
                  tripType: "One-way",
                ),
                SizedBox(
                  ///18
                  width: deviceWidth * 0.036,
                ),
                const HomeRadioButtonWidget(tripType: "Round-trip"),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.008,
            ),

            ///WIDGET FOR TRIP DETAILS
            const TripDetailsWidget(
                headingText: "From",
                data: "New York, USA",
                icon: Icon(Icons.flight_takeoff_outlined)),
            const TripDetailsWidget(
                headingText: "To",
                data: "Da Nang, Vietnam",
                icon: Icon(Icons.flight_land_outlined)),
            GestureDetector(
              onTap: () {
                dateBottomSheet();
              },
              child: const TripDetailsWidget(
                  headingText: "Departure Date",
                  data: "August 28, 2021",
                  icon: Icon(Icons.calendar_month_outlined)),
            ),
            const TripDetailsWidget(
                headingText: "Travelers",
                data: "1 Adult, 1 child, 0 Infant",
                icon: Icon(Icons.person_outline_rounded)),

            ///BUTTON WIDGET FOR SEARCH FLIGHTS BUTTON
            const ButtonWidget(
              buttonText: "Search flights",
              buttonColor: Color.fromRGBO(0, 100, 210, 1),
              isFullWidth: true,
            ),
          ],
        ),
      ),
    );
  }
}
