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

  Color onTapWeightColor(int selectedWeightIndex, int currentWeightIndex) {
    return selectedWeightIndex == currentWeightIndex
        ? const Color.fromRGBO(0, 100, 210, 1)
        : const Color.fromRGBO(255, 255, 255, 1);
  }

  BookingDetailController bookingController =
      Get.put(BookingDetailController());
    BookingDetailController bookingDetailController =
      Get.find<BookingDetailController>();
  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceWidth * 0.0}");
    return Obx((){ return SizedBox(
      width: deviceWidth,
      height: deviceHeight * 0.09,
      child:   ListView.builder(
            itemCount: bookingDetailController.weightList.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  bookingDetailController.currentWeightIndex.value = index;
                },
                child: Container(
                  height: deviceHeight * 0.066,
                  width: deviceWidth * 0.258,
                  decoration: BoxDecoration(
                    color: onTapWeightColor(index,bookingDetailController.currentWeightIndex.value),
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(color: const Color.fromRGBO(13, 22, 52, 0.05)),
                  ),
                  child: Column(
                    children: [
                      Text(
                        bookingDetailController.weightList[index].weight,
                        style: GoogleFonts.inter(
                            color: bookingDetailController.currentWeightIndex.value == index
                                ? const Color.fromRGBO(255, 255, 255, 1)
                                : const Color.fromRGBO(13, 22, 52, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: deviceHeight * 0.02),
                      ),
                      Text(
                        bookingDetailController.weightList[index].amount,
                        style: GoogleFonts.inter(
                            color:  bookingDetailController.currentWeightIndex.value == index
                                ? const Color.fromRGBO(255, 255, 255, 1)
                                : const Color.fromRGBO(37, 40, 49, 0.5),
                            fontWeight: FontWeight.w500,
                            fontSize: deviceHeight * 0.02),
                      ),
                    ],
                  ),
                ),
              );
            }
      ),
    );});
  }
}
