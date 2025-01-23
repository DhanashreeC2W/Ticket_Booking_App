import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/Widgets/radio_button_with_text_widget.dart';
import 'package:ticket_booking_app/view/Home%20Screen/Widget/trip_details_widget.dart';
import 'package:ticket_booking_app/view/Search%20Result%20Screen/search_result_screen.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';

/// HOME SCREEN CONTAINER
class HomescreenContainer extends StatefulWidget {
  const HomescreenContainer({super.key});

  @override
  State<HomescreenContainer> createState() => _HomescreenContainerState();
}

class _HomescreenContainerState extends State<HomescreenContainer> {
  /// VARIABLE TO TRACK SELECTED RADIO BUTTON FOR TRIP TYPE
  int? _tripGroup;

  /// FUNCTION TO DISPLAY A DATE PICKER BOTTOM SHEET
  void dateBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                /// DATE PICKER DIALOG FOR SELECTING DEPARTURE DATE
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: DatePickerDialog(
                        currentDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2027)),
                  ),
                ),

                /// SEARCH DATE BUTTON
                const ButtonWidget(
                  buttonText: "Search date",
                  buttonColor: Color.fromRGBO(0, 100, 210, 1),
                  isFullWidth: true,
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    /// DEVICE DIMENSIONS
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;

    return Expanded(
      child: Container(
        /// PADDING AND DIMENSIONS
        padding: EdgeInsets.only(
          top: deviceHeight * 0.03,
          left: deviceWidth * 0.06, // 16
          right: deviceWidth * 0.06, // 16
        ),
        height: deviceHeight,
        width: deviceWidth,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ROW FOR RADIO BUTTONS (ONE-WAY AND ROUND-TRIP)
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RadioButtonWithTextWidget(
                  groupVal: _tripGroup,
                  buttonVal: 0,
                  buttonName: "One-way",
                ),
                SizedBox(
                  width: deviceWidth * 0.036, // 18
                ),
                RadioButtonWithTextWidget(
                  buttonName: "Round-trip",
                  groupVal: _tripGroup,
                  buttonVal: 1,
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.008,
            ),

            /// TRIP DETAILS WIDGETS
            const TripDetailsWidget(
                headingText: "From",
                data: "New York, USA",
                icon: Icon(Icons.flight_takeoff_outlined)),
            const TripDetailsWidget(
                headingText: "To",
                data: "Da Nang, Vietnam",
                icon: Icon(Icons.flight_land_outlined)),

            /// DEPARTURE DATE WIDGET WITH TAP TO OPEN DATE PICKER
            GestureDetector(
              onTap: () {
                dateBottomSheet();
              },
              child: const TripDetailsWidget(
                  headingText: "Departure Date",
                  data: "August 28, 2021",
                  icon: Icon(Icons.calendar_month_outlined)),
            ),

            /// TRAVELERS DETAILS WIDGET
            const TripDetailsWidget(
                headingText: "Travelers",
                data: "1 Adult, 1 child, 0 Infant",
                icon: Icon(Icons.person_outline_rounded)),

            /// SEARCH FLIGHTS BUTTON
            GestureDetector(
              onTap: () {
                Get.to(const SearchResultScreen());
              },
              child: const ButtonWidget(
                buttonText: "Search flights",
                buttonColor: Color.fromRGBO(0, 100, 210, 1),
                isFullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
