import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/controller/onboard_controller.dart';
import 'package:ticket_booking_app/view/widget/onboarding_widget.dart';

///ONBOARDING SCREEN
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  @override
  State createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  ///CONTROLLER FOR PAGEVIEW
  final PageController _pageController = PageController();

  /// INITIALIZE THE ONBOARDCONTROLLER USING GETX
  final OnboardController onboardController = Get.put(OnboardController());
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: deviceHeight,
            child: 
              PageView.builder(
                controller: _pageController,
                itemCount: onboardController.onBoardItemsList.length,
                itemBuilder: (context, index) {
                  return OnboardingWidget(
                      img: onboardController.onBoardItemsList[index].img,
                      pageController: _pageController,
                      text: onboardController.onBoardItemsList[index].text);
                },
              ),
             
            
          ),
         
        ],
      ),
    );
  }
}
