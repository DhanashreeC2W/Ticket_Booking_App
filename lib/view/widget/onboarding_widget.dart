import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

///WIDGET FOR ONBOARDING SCREEN
class OnboardingWidget extends StatelessWidget {
  final String img;
  final String text;
  final PageController pageController;
  const OnboardingWidget({super.key, required this.img, required this.text,required this.pageController});

  @override
  Widget build(BuildContext context) {

    ///HEIGHT AND WIDTH WITH MEDIAQUERY FOR RESPONSIVENESS
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    log("${deviceHeight * 0.012}");
    // log("${deviceWidth*0.0136}");

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.only(
         // top: deviceHeight * 0.08, //67
          left: deviceWidth * 0.041, //16
          right: deviceWidth * 0.041, //16
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///IMAGE ON THE ONBOARDING SCREENS
            ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Image.asset(
                img,
                height: deviceHeight / 2,
                width: deviceWidth,
                fit: BoxFit.fill,
              ),
            ),
            ///SMO0TH PAGE INDICATOR
            Center(
              child: SmoothPageIndicator(
                    effect: const WormEffect(
                      dotWidth: 61,
                      dotHeight: 6
                    ),
                    
                       controller: pageController, 
                       count: 3,
                       ),
            ),
            Text(
              text,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(10, 10, 10, 1),
                fontSize: deviceHeight * 0.048,
              ),
            ),
            //ROW FOR SKIP AND NEXT BUTTON
            Row(
              children: [
                ///SKIP BUTTON FOR NAVIGATING TO SIGN IN
                GestureDetector(

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
                ///NEXT BUTTON FOR NAVIGATING NEXT ONBOARDING SCREEN
                GestureDetector(
                  onTap: (){
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300), 
                      curve: Curves.easeIn);
                  },
                  child: Container(
                      height: deviceHeight * 0.058, //48
                      width: deviceWidth * 0.43, //167
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 100, 210, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      ///ROW FOR TEXT AND ICON IN THE NEXT BUTTON
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.,
                        children: [
                          Text(
                            // pageController.page!.toInt()==2?
                            // "Get Started":
                            "Next",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontSize: deviceHeight * 0.019,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
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
                              size: deviceHeight * 0.013,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
