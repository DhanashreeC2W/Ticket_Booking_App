import 'package:book_my_seat/book_my_seat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingWidget extends StatefulWidget {
  const BookingWidget({super.key});

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget> {
  ///LIST TO DISPLAY ROW NUMBERS
  List seatNoList = [1, 2, 3, 4, 5, 6, 7, 8];

  ///LIST TO DISPLAY COLUMN NAME
  List columnNamesList = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;

    ///MAIN CONTAINER CONTAINING ALL SEATS
    return Container(
      alignment: Alignment.bottomCenter,
      width: deviceWidth,
      height: deviceHeight * 0.45,
      padding: const EdgeInsets.all(10),
     decoration: BoxDecoration(
       color: const Color.fromRGBO(242, 243, 246, 1),
       borderRadius: BorderRadius.circular(16)
     ),
      child: Column(
        children: [
          ///ROW TO REPRESENT COLUMN NAMES
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 15,
                width: deviceWidth * 0.85, //350

                ///COLUMN NAMES
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: columnNamesList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        height: deviceHeight * 0.012,
                        margin: EdgeInsets.only(
                          left: deviceWidth * 0.02,
                          //  bottom: deviceHeight * 0.012,
                        ),
                        width: deviceWidth * 0.1,
                        child: Text(
                          ///ACCESSING LIST OF COLUMN NAMES
                          "${columnNamesList[index]}",
                          style: GoogleFonts.inter(
                            color: const Color.fromARGB(255, 126, 127, 129),
                            fontWeight: FontWeight.w500,
                            fontSize: deviceHeight * 0.014,
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
          SizedBox(
            height: deviceHeight * 0.012,
          ),

          ///ROW FOR 2 SECTIONS OF SEATS AND SEAT NUMBER BETWEEN THEM
          Row(
            children: [
              SizedBox(
                width: deviceWidth * 0.012,
              ),

              ///SEAT SECTION 1
              SeatLayoutWidget(
                onSeatStateChanged: (rowI, colI, seatState) {},
                stateModel: const SeatLayoutStateModel(
                  ///SEAT THAT IS DISABLED AND UNAVAILABLE FOR SELECTION
                  pathDisabledSeat: 'assets/svg/qatar_logo.svg',

                  /// IMAGE DISPLAYED WHEN A SEAT IS SELECTED BY THE USER
                  pathSelectedSeat: 'assets/svg/selected_seat.svg',

                  ///REPRESENTS A SEAT THAT HAS ALREADY BEEN SOLD
                  pathSoldSeat: 'assets/svg/not_selected_seat.svg',

                  ///SEATS THAT ARE AVAILABLE BUT HAVE NOT BEEN SELECTED BY THE USER YET
                  pathUnSelectedSeat: 'assets/svg/empty_seat.svg',
                  rows: 8,
                  cols: 3,
                  seatSvgSize: 40,
                  currentSeatsState: [
                    // 8 ROWS WITH 3 SEAT STATES EACH
                    [
                      SeatState.unselected,
                      SeatState.sold,
                      SeatState.unselected,
                    ],
                    [
                      SeatState.unselected,
                      SeatState.unselected,
                      SeatState.unselected,
                    ],
                    [
                      SeatState.sold,
                      SeatState.unselected,
                      SeatState.selected,
                    ],
                    [
                      SeatState.sold,
                      SeatState.sold,
                      SeatState.sold,
                    ],
                    [
                      SeatState.sold,
                      SeatState.sold,
                      SeatState.sold,
                    ],
                    [
                      SeatState.sold,
                      SeatState.sold,
                      SeatState.sold,
                    ],
                    [
                      SeatState.sold,
                      SeatState.unselected,
                      SeatState.unselected,
                    ],
                    [
                      SeatState.unselected,
                      SeatState.sold,
                      SeatState.sold,
                    ],
                  ],
                ),
              ),

              ///FOR ROW NUMBERS
              SizedBox(
                height: deviceHeight * 0.35,
                width: deviceWidth * 0.05, //20
                child: ListView.builder(
                  itemCount: seatNoList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 25, right: 20),
                      height: 40,
                      child: Text(
                        "${seatNoList[index]}",
                        style: GoogleFonts.inter(
                          color: const Color.fromRGBO(13, 22, 52, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: deviceHeight * 0.012,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                width: deviceWidth * 0.075,
              ),

              ///SEAT SECTION 2
              SeatLayoutWidget(
                onSeatStateChanged: (rowI, colI, seatState) {},
                stateModel: const SeatLayoutStateModel(
                  ///SEAT THAT IS DISABLED AND UNAVAILABLE FOR SELECTION
                  pathDisabledSeat: 'assets/svg/qatar_logo.svg',

                  /// IMAGE DISPLAYED WHEN A SEAT IS SELECTED BY THE USER
                  pathSelectedSeat: 'assets/svg/selected_seat.svg',

                  ///REPRESENTS A SEAT THAT HAS ALREADY BEEN SOLD
                  pathSoldSeat: 'assets/svg/not_selected_seat.svg',

                  ///SEATS THAT ARE AVAILABLE BUT HAVE NOT BEEN SELECTED BY THE USER YET
                  pathUnSelectedSeat: 'assets/svg/empty_seat.svg',
                  rows: 8,
                  cols: 3,
                  seatSvgSize: 40,
                  currentSeatsState: [
                    // 8 ROWS WITH 3 SEAT STATES EACH
                    [
                      SeatState.unselected,
                      SeatState.unselected,
                      SeatState.unselected,
                    ],
                    [
                      SeatState.unselected,
                      SeatState.sold,
                      SeatState.unselected,
                    ],
                    [
                      SeatState.sold,
                      SeatState.sold,
                      SeatState.unselected,
                    ],
                    [
                      SeatState.unselected,
                      SeatState.sold,
                      SeatState.unselected,
                    ],
                    [
                      SeatState.sold,
                      SeatState.sold,
                      SeatState.sold,
                    ],
                    [
                      SeatState.sold,
                      SeatState.sold,
                      SeatState.sold,
                    ],
                    [
                      SeatState.sold,
                      SeatState.unselected,
                      SeatState.unselected,
                    ],
                    [
                      SeatState.unselected,
                      SeatState.sold,
                      SeatState.sold,
                    ],
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: deviceWidth * 0.037,
                right: deviceWidth * 0.037,
                top: deviceHeight * 0.022),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/svg/selected.svg"),
                Text(
                  "SELECTED",
                  style: TextStyle(
                      color: const Color.fromRGBO(13, 22, 52, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: deviceHeight * 0.011,
                      fontFamily: "General Sans"),
                ),
                SvgPicture.asset("assets/svg/available.svg"),
                Text(
                  "AVAILABLE",
                  style: TextStyle(
                      color: const Color.fromRGBO(13, 22, 52, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: deviceHeight * 0.011,
                      fontFamily: "General Sans"),
                ),
                SvgPicture.asset("assets/svg/not_available.svg"),
                Text(
                  "NOT AVAILABLE",
                  style: TextStyle(
                      color: const Color.fromRGBO(13, 22, 52, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: deviceHeight * 0.011,
                      fontFamily: "General Sans"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
