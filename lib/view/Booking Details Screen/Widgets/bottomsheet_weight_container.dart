import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/controller/booking_detail_controller.dart';

class BottomsheetWeightContainer extends StatefulWidget {
  const BottomsheetWeightContainer({super.key});

  @override
  State<BottomsheetWeightContainer> createState() =>
      _BottomsheetWeightContainerState();
}

class _BottomsheetWeightContainerState
    extends State<BottomsheetWeightContainer> {
  final BookingDetailController bookingController =
      Get.put(BookingDetailController(), permanent: true);

  Color onTapWeightColor(int selectedWeightIndex, int currentWeightIndex) {
    return selectedWeightIndex == currentWeightIndex
        ? const Color.fromRGBO(0, 100, 210, 1) // Selected state color
        : const Color.fromRGBO(255, 255, 255, 1); // Unselected state color
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height; 
    final deviceWidth = Get.width;

    return SizedBox(
      width: deviceWidth,
      height: deviceHeight * 0.09,
      child: ListView.builder(
        itemCount: bookingController.weightList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              bookingController.currentWeightIndex.value = index;
              log('Selected Weight Index: $index');
              setState(() {});
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: deviceHeight * 0.066,
              width: deviceWidth * 0.258,
              decoration: BoxDecoration(
                color: onTapWeightColor(
                    index, bookingController.currentWeightIndex.value),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color.fromRGBO(13, 22, 52, 0.05),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bookingController.weightList[index].weight,
                    style: GoogleFonts.inter(
                      color: bookingController.currentWeightIndex.value == index
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(13, 22, 52, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: deviceHeight * 0.02,
                    ),
                  ),
                  Text(
                    bookingController.weightList[index].amount,
                    style: GoogleFonts.inter(
                      color: bookingController.currentWeightIndex.value == index
                          ? const Color.fromRGBO(255, 255, 255, 1)
                          : const Color.fromRGBO(37, 40, 49, 0.5),
                      fontWeight: FontWeight.w500,
                      fontSize: deviceHeight * 0.02,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
