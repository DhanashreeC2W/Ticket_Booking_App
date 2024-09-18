import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ticket_booking_app/controller/onboard_controller.dart';
import 'package:ticket_booking_app/model/onboard_model.dart';
import 'package:ticket_booking_app/view/widget/onboarding_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});
  @override
  State createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  OnboardController onboardController = OnboardController();
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
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
