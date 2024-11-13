
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/Widgets/settings_bold_catergory_widget.dart';
import 'package:ticket_booking_app/view/Widgets/switch_button_widget.dart';

import '../../Widgets/back_button_widget.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
   
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
            padding: EdgeInsets.only(
              top: deviceHeight * 0.03,
              left: deviceWidth * 0.04, //16
              right: deviceWidth * 0.04, //16
              bottom: deviceHeight * 0.02, //26
            ),
            child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///BACK BUTTON
                  const BackButtonWidget(),
            
                  ///SCREEN NAME AFTER BACKBUTTON
                  Text(
                    "Notification Settings",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(23, 24, 24, 1),
                      fontSize: deviceHeight * 0.029,
                    ),
                  ),
                  const SettingsBoldCatergoryWidget(
                      settingsCatergory: "Push Notification Disabled"),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "To enable notifications, go to",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(37, 40, 49, 0.7),
                            fontSize: deviceHeight * 0.016,
                          ),
                        ),
                        TextSpan(
                          text: " Settings",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 100, 210, 1),
                            fontSize: deviceHeight * 0.016,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SettingsBoldCatergoryWidget(
                    settingsCatergory: "Activity",
                    isdecription: true,
                    settingDescription:
                        "Secure your account by keeping your log in, register, and OTP activity on track.",
                  ),
                  const SwitchButtonWidget(
                    switchButtonText: "Email",
                    isDivider: true,
                  ),
                  const SwitchButtonWidget(
                    switchButtonText: "Push Notification",
                  ),
                  const SettingsBoldCatergoryWidget(
                    settingsCatergory: "Special For You",
                    isdecription: true,
                    settingDescription:
                        "You can never have too much of limited-time discount, exclusive offers, tips and info new feature.",
                  ),
                  const SwitchButtonWidget(
                    switchButtonText: "Email",
                    isDivider: true,
                  ),
                  const SwitchButtonWidget(
                    switchButtonText: "Push Notification",
                  ),
                  const SettingsBoldCatergoryWidget(
                    settingsCatergory: "Reminders",
                    isdecription: true,
                    settingDescription:
                        "Get inportant travel news and info, payment reminders, check-in reminder and more.",
                  ),
                    const SwitchButtonWidget(
                    switchButtonText: "Email",
                    isDivider: true,
                  ),
                  const SwitchButtonWidget(
                    switchButtonText: "Push Notification",
                  ),
                   const SettingsBoldCatergoryWidget(
                    settingsCatergory: "Membership",
                    isdecription: true,
                    settingDescription:
                        "You’ll get emails about tiket Elite Rewards and surveys.",
                  ),
                    const SwitchButtonWidget(
                    switchButtonText: "Email",
                    isDivider: true,
                  ),
                  const SwitchButtonWidget(
                    switchButtonText: "Push Notification",
                  ),
                ])));
  }
}
