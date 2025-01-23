import 'package:get/get.dart';
import 'package:ticket_booking_app/model/onboard_model.dart';

///ONBOARDING CONTROLLER WITH GETX

class OnboardController extends GetxController {
  List<OnboardModel> onBoardItemsList = [
    const OnboardModel(
        img: "assets/images/onboarding2.png",
        text: "Explore \nThe Beautiful World!",
        currentIndex: 0),
    const OnboardModel(
      img: "assets/images/onboarding1.png",
      text: "Find \nYour Perfect Tickets To Fly",
      currentIndex: 1,
    ),
    const OnboardModel(
        img: "assets/images/onboarding3.png",
        text: "Book Appointment \nin Easiest Way!",
        currentIndex: 2),
  ];
}
