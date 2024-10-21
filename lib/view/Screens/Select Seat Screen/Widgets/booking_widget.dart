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
  List seatNoList = [1, 2, 3, 4, 5, 6, 7, 8];
  List columnNamesList = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
  ];
  int index = 0;
  Set<SeatNumber> selectedSeats = {};

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    return Expanded(
      child: SizedBox(
        height: deviceHeight,
        width: deviceWidth,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              width: deviceWidth,
              height: deviceHeight * 0.4,
              padding: const EdgeInsets.all(10),
              color: const Color.fromRGBO(242, 243, 246, 1),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 15,
                        width: 350,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: columnNamesList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                alignment: Alignment.center,
                                //height: 40,
                                //color: Colors.amber,
                                width: 49,
                                child: Text(
                                  "${columnNamesList[index]}",
                                  style: GoogleFonts.inter(
                                    color: const Color.fromRGBO(13, 22, 52, 1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SeatLayoutWidget(
                        onSeatStateChanged: (rowI, colI, seatState) {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: seatState == SeatState.selected
                                  ? Text("Selected Seat[$rowI][$colI]")
                                  : Text("De-selected Seat[$rowI][$colI]"),
                            ),
                          );
                          if (seatState == SeatState.selected) {
                            selectedSeats
                                .add(SeatNumber(rowI: rowI, colI: colI));
                          } else {
                            selectedSeats
                                .remove(SeatNumber(rowI: rowI, colI: colI));
                          }
                        },
                        stateModel: const SeatLayoutStateModel(
                          pathDisabledSeat: 'assets/svg/qatar_logo.svg',
                          pathSelectedSeat: 'assets/svg/selected_seat.svg',
                          pathSoldSeat: 'assets/svg/empty_seat.svg',
                          pathUnSelectedSeat:
                              'assets/svg/not_selected_seat.svg',
                          rows: 8,
                          cols: 3,
                          seatSvgSize: 40,
                          currentSeatsState: [
                            // 8 rows with 7 seat states each (matching the 'rows' and 'cols' properties)
                            [
                              SeatState.unselected,
                              SeatState.sold,
                              SeatState.unselected,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.sold,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.sold,
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
                              SeatState.unselected,
                              SeatState.sold,
                            ],
                          ],
                        ),
                      ),
                      SizedBox(
                        // color: Colors.red,
                        height: 320,
                        width: 20,
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
                                  fontSize: 10,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SeatLayoutWidget(
                        onSeatStateChanged: (rowI, colI, seatState) {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: seatState == SeatState.selected
                                  ? Text("Selected Seat[$rowI][$colI]")
                                  : Text("De-selected Seat[$rowI][$colI]"),
                            ),
                          );
                          if (seatState == SeatState.selected) {
                            selectedSeats
                                .add(SeatNumber(rowI: rowI, colI: colI));
                          } else {
                            selectedSeats
                                .remove(SeatNumber(rowI: rowI, colI: colI));
                          }
                        },
                        stateModel: const SeatLayoutStateModel(
                          pathDisabledSeat: 'assets/svg/qatar_logo.svg',
                          pathSelectedSeat: 'assets/svg/selected_seat.svg',
                          pathSoldSeat: 'assets/svg/empty_seat.svg',
                          pathUnSelectedSeat:
                              'assets/svg/not_selected_seat.svg',
                          rows: 8,
                          cols: 3,
                          seatSvgSize: 40,
                          currentSeatsState: [
                            // 8 rows with 7 seat states each (matching the 'rows' and 'cols' properties)
                            [
                              SeatState.unselected,
                              SeatState.sold,
                              SeatState.unselected,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.sold,
                            ],
                            [
                              SeatState.unselected,
                              SeatState.unselected,
                              SeatState.sold,
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
                              SeatState.unselected,
                              SeatState.sold,
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeatNumber {
  final int rowI;
  final int colI;

  const SeatNumber({required this.rowI, required this.colI});

  @override
  bool operator ==(Object other) {
    return rowI == (other as SeatNumber).rowI &&
        colI == (other as SeatNumber).colI;
  }

  @override
  int get hashCode => rowI.hashCode;

  @override
  String toString() {
    return '[$rowI][$colI]';
  }
}
