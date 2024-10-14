import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Account%20Screen/Widgets/account_options_widgets.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/Widgets/settings_bold_catergory_widget.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/email_mobile_no_screen.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/language_screen.dart';
import 'package:ticket_booking_app/view/Screens/Settings%20Screens/notification_settings_screen.dart';
import 'package:ticket_booking_app/view/Widgets/switch_button_widget.dart';

import '../../Widgets/back_button_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight =Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.016}");
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
            padding: EdgeInsets.only(
              top: deviceHeight * 0.03,
              left: deviceWidth * 0.04, //16
              right: deviceWidth * 0.04, //16
              bottom: deviceHeight * 0.02, //26
            ),
            child: SizedBox(
              height: deviceHeight / 1.4,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///BACK BUTTON
                    const BackButtonWidget(),

                    ///SCREEN NAME AFTER BACKBUTTON
                    Text(
                      "Settings",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(23, 24, 24, 1),
                        fontSize: deviceHeight * 0.029,
                      ),
                    ),

                    /// SETTINGS CATEGORY AND OPTIONS USING WIDGETS
                    const SettingsBoldCatergoryWidget(
                        settingsCatergory:
                            "General"), /// GENERAL SETTINGS CATEGORY
                    GestureDetector(
                      onTap: () {
                        Get.to(() =>
                            const LanguageScreen()); /// NAVIGATES TO LANGUAGE SCREEN
                      },
                      child: const AccountOptionsWidgets(
                        optionName: "Language", /// OPTION TO CHANGE LANGUAGE
                        isSettingsScreen: true,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>const NotificationSettingsScreen());/// NAVIGATES TO NOTIFICATION SCREEN
                      },
                      child: const AccountOptionsWidgets(
                        optionName:
                            "Notification Settings", /// NOTIFICATION SETTINGS OPTION
                        isSettingsScreen: true,
                      ),
                    ),
                    const SwitchButtonWidget(
                        switchButtonText:
                            "Location"), /// SWICTH FOR LOCATION SETTINGS
                    const SettingsBoldCatergoryWidget(
                        settingsCatergory:
                            "Account & Security"), /// ACCOUNT & SECURITY CATEGORY
                    GestureDetector(
                      onTap: () => Get.to(() =>
                          const EmailMobileNoScreen()), /// NAVIGATES TO EMAIL AND MOBILE NUMBER SCREEN
                      child: const AccountOptionsWidgets(
                        optionName:
                            "Email and Mobile Number", /// EMAIL AND MOBILE NUMBER SETTINGS OPTION
                        isSettingsScreen: true,
                      ),
                    ),
                    const AccountOptionsWidgets(
                      optionName:
                          "Security Settings", /// SECURITY SETTINGS OPTION
                      isSettingsScreen: true,
                    ),
                    const AccountOptionsWidgets(
                      optionName: "Delete Account", /// DELETE ACCOUNT OPTION
                      isSettingsScreen: true,
                    ),
                    const SettingsBoldCatergoryWidget(
                        settingsCatergory: "Other"), /// OTHER SETTINGS CATEGORY
                    const AccountOptionsWidgets(
                      optionName:
                          "About Indochina Travel App", /// ABOUT INDOCHINA TRAVEL APP OPTION
                      isSettingsScreen: true,
                    ),
                    const AccountOptionsWidgets(
                      optionName: "Privacy Policy", /// PRIVACY POLICY OPTION
                      isSettingsScreen: true,
                    ),
                    const AccountOptionsWidgets(
                      optionName:
                          "Terms and Conditions", /// TERMS AND CONDITIONS OPTION
                      isSettingsScreen: true,
                    ),

                    ///ROW FOR RATE APP OPTION WITH VERSION
                    Row(
                      children: [
                        Text(
                          "Rate App",
                          style: GoogleFonts.inter(
                              color: const Color.fromRGBO(37, 40, 49, 0.9),
                              fontWeight: FontWeight.w400,
                              fontSize: deviceHeight * 0.016),
                        ),
                        const Spacer(),
                        Text(
                          "v4.87.2",
                          style: GoogleFonts.inter(
                              color: const Color.fromRGBO(37, 40, 49, 0.7),
                              fontWeight: FontWeight.w400,
                              fontSize: deviceHeight * 0.016),
                        ),
                      ],
                    )
                  ]),
            )));
  }
}
