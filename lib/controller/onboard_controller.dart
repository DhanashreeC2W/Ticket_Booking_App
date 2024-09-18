import 'package:ticket_booking_app/model/onboard_model.dart';

class OnboardController {
  List<OnboardModel> onBoardItemsList = [
    const OnboardModel(
        img: "assets/images/onboarding2.png",
        text: "Explore \nThe Beautiful World!"),

         const OnboardModel(
        img: "assets/images/onboarding1.png",
        text: "Find Your Perfect Tickets To Fly"),

         const OnboardModel(
        img: "assets/images/onboarding3.png",
        text: "Book Appointment in Easiest Way!"),
  ];
}
