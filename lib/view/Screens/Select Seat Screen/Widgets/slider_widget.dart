import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:ticket_booking_app/view/Screens/Payment%20Details%20Screen/payment_details_screen.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';
import 'package:ticket_booking_app/view/Widgets/total_container_widget.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  checkBookingBottomSheet(double deviceHeight, double deviceWidth) {
    showModalBottomSheet(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        context: context,
        builder: (context) {
          return Padding(
              padding: EdgeInsets.only(
                bottom: deviceHeight * 0.017,
                top: deviceHeight * 0.017,
                left: deviceWidth * 0.04,
                right: deviceWidth * 0.04,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Container(
                        height: 3,
                        width: deviceWidth * 0.15,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 197, 197, 199),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.02,
                    ),

                    ///TOP TEXT OF THE BOTTOMSHEET
                    SizedBox(
                      width: deviceWidth / 1.5,
                      height: 70,
                      child: Text(
                        "Double Check Your Bookings",
                        //textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(13, 22, 52, 1),
                          fontSize: deviceHeight * 0.027,
                        ),
                      ),
                    ),
                    Text(
                      "Please before you proceed to payment, make sure your data is correct.",
                      //textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(128, 128, 128, 1),
                        fontSize: deviceHeight * 0.014,
                      ),
                    ),
                    const TotalContainerWidget(),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const PaymentDetailsScreen());
                      },
                      child: const ButtonWidget(
                          buttonText: "Save changes",
                          isFullWidth: true,
                          buttonColor: Color.fromRGBO(0, 100, 210, 1)),
                    )
                  ]));
        });
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;

    return

        ///SLIDER USING slide_to_act WIDGET
        Builder(builder: (context) {
      final GlobalKey<SlideActionState> key = GlobalKey();
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SlideAction(
          height: 56, // Adjust the height as needed
          sliderRotate: false,
          outerColor: const Color.fromRGBO(218, 235, 255, 1),
          innerColor: const Color.fromRGBO(0, 100, 210, 1),
          borderRadius: 44,

          text: "Slide to Book",
          textStyle: GoogleFonts.inter(
            color: const Color.fromRGBO(0, 100, 210, 1),
            fontWeight: FontWeight.w500,
            fontSize: deviceHeight * 0.016,
          ),

          // full image as the slider button
          sliderButtonIcon: SvgPicture.asset(
            "assets/svg/slider.svg",
            width: 80,
            height: 48,
            fit: BoxFit.cover,
          ),

          sliderButtonIconPadding: 0,
          key: key,
          onSubmit: () {
            return checkBookingBottomSheet(deviceHeight, deviceWidth);
          },

          ///SHADOW OF SLIDER TO 0
          elevation: 0,
        ),
      );
    });
  }
}
