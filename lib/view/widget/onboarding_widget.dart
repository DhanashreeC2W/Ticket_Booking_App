import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ticket_booking_app/view/signup_screen.dart';

class OnboardingWidget extends StatelessWidget {
  final String img;
  final String text;
  final PageController pageController;
  final int currentIndex;
  const OnboardingWidget({
    super.key,
    required this.img,
    required this.text,
    required this.pageController,
    required this.currentIndex,

    ///PASS THE CURRENT PAGE INDEX
  });

  @override
  Widget build(BuildContext context) {
    /// HEIGHT AND WIDTH WITH MEDIAQUERY FOR RESPONSIVENESS
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    log("${ deviceWidth * 0.053}");

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.only(
          left: deviceWidth * 0.041, //16
          right: deviceWidth * 0.041, //16
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /// IMAGE ON THE ONBOARDING SCREENS
            ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Image.asset(
                img,
                height: deviceHeight / 2,
                width: deviceWidth,
                fit: BoxFit.fill,
              ),
            ),

            /// SMOOTH PAGE INDICATOR
            Center(
              child: SmoothPageIndicator(
                effect: ExpandingDotsEffect(
                    dotWidth: deviceWidth * 0.053, 
                    dotHeight: 6,
                    activeDotColor: const Color.fromRGBO(0,100,210,1),
                    dotColor: const Color.fromRGBO(225,240,237,1),
                    ),
                controller: pageController,
                count: 3,
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                text,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(10, 10, 10, 1),
                  fontSize: deviceHeight * 0.048,
                ),
              ),
            ),
            // ROW FOR SKIP AND NEXT/GET STARTED BUTTON
            Row(
              children: [
                /// SKIP BUTTON FOR NAVIGATING TO SIGN UP
                GestureDetector(
                  onTap: () {
                    /// NAVIGATE TO SIGNUPSCREEN ON SKIP
                    Get.to(() => const SignUpScreen());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: deviceHeight * 0.058, //48
                    width: deviceWidth * 0.43, //167
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Skip",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(37, 40, 49, 1),
                        fontSize: deviceHeight * 0.019,
                      ),
                    ),
                  ),
                ),
                const Spacer(),

                /// NEXT OR GET STARTED BUTTON
                GestureDetector(
                  onTap: () {
                    if (currentIndex == 2) {
                      Get.to(() => const SignUpScreen());
                    } else {
                      // Otherwise, go to the next page
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  child: Container(
                    height: deviceHeight * 0.058, //48
                    width: deviceWidth * 0.43, //167
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 100, 210, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),

                    /// ROW FOR TEXT AND ICON IN THE NEXT/GET STARTED BUTTON
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          currentIndex == 2 ? "Get Started" : "Next",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: deviceHeight * 0.019,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: deviceWidth * 0.043,
                          width: deviceWidth * 0.043,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(
                            Icons.forward_rounded,
                            color: const Color.fromRGBO(0, 100, 210, 1),
                            size: deviceWidth * 0.029,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
