import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Account%20Screen/Widgets/account_options_widgets.dart';
import 'package:ticket_booking_app/view/Delete%20Account%20Screen/delete_account.dart';
import 'package:ticket_booking_app/view/Security%20Settings%20Screen/security_settings_screen.dart';
import 'package:ticket_booking_app/view/Settings%20Screen/Widgets/settings_bold_catergory_widget.dart';
import 'package:ticket_booking_app/view/Email%20And%20Mobile%20Number%20Screen/email_mobile_no_screen.dart';
import 'package:ticket_booking_app/view/Language%20Screen/language_screen.dart';
import 'package:ticket_booking_app/view/Notification%20Settings%20Screen/notification_settings_screen.dart';
import 'package:ticket_booking_app/view/Widgets/switch_button_widget.dart';

import '../Widgets/back_button_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///BACK BUTTON
                    const BackButtonWidget(),
                    SizedBox(height: deviceHeight * 0.014),

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
                        settingsCatergory: "General"),
                    SizedBox(height: deviceHeight * 0.014),

                    /// GENERAL SETTINGS CATEGORY
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const LanguageScreen());

                        /// NAVIGATES TO LANGUAGE SCREEN
                      },
                      child: const AccountOptionsWidgets(
                        optionName: "Language",

                        /// OPTION TO CHANGE LANGUAGE
                        isSettingsScreen: true,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const NotificationSettingsScreen());

                        /// NAVIGATES TO NOTIFICATION SCREEN
                      },
                      child: const AccountOptionsWidgets(
                        optionName: "Notification Settings",

                        /// NOTIFICATION SETTINGS OPTION
                        isSettingsScreen: true,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: SwitchButtonWidget(switchButtonText: "Location"),
                    ),

                    /// SWICTH FOR LOCATION SETTINGS
                    const SettingsBoldCatergoryWidget(
                        settingsCatergory: "Account & Security"),

                    /// ACCOUNT & SECURITY CATEGORY
                    GestureDetector(
                      onTap: () => Get.to(() => const EmailMobileNoScreen()),

                      /// NAVIGATES TO EMAIL AND MOBILE NUMBER SCREEN
                      child: const AccountOptionsWidgets(
                        optionName: "Email and Mobile Number",

                        /// EMAIL AND MOBILE NUMBER SETTINGS OPTION
                        isSettingsScreen: true,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => const SecuritySettingsScreen()),
                      child: const AccountOptionsWidgets(
                        optionName: "Security Settings",

                        /// SECURITY SETTINGS OPTION
                        isSettingsScreen: true,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => const DeleteAccount()),
                      child: const AccountOptionsWidgets(
                        optionName: "Delete Account",

                        /// DELETE ACCOUNT OPTION
                        isSettingsScreen: true,
                      ),
                    ),
                    const SettingsBoldCatergoryWidget(
                        settingsCatergory: "Other"),

                    /// OTHER SETTINGS CATEGORY
                    const AccountOptionsWidgets(
                      optionName: "About Indochina Travel App",

                      /// ABOUT INDOCHINA TRAVEL APP OPTION
                      isSettingsScreen: true,
                    ),
                    const AccountOptionsWidgets(
                      optionName: "Privacy Policy",

                      /// PRIVACY POLICY OPTION
                      isSettingsScreen: true,
                    ),
                    const AccountOptionsWidgets(
                      optionName: "Terms and Conditions",

                      /// TERMS AND CONDITIONS OPTION
                      isSettingsScreen: true,
                    ),

                    ///ROW FOR RATE APP OPTION WITH VERSION
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
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
                      ),
                    )
                  ]),
            )));
  }
}
