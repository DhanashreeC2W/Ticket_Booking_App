import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Security%20Settings%20Screen/Widgets/radio_and_swich_card_widget.dart';
import 'package:ticket_booking_app/view/Set%20Pin%20Screen/setpin_screen.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';

class SecuritySettingsScreen extends StatelessWidget {
  const SecuritySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 243, 246, 1),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        surfaceTintColor: const Color.fromRGBO(255, 255, 255, 1),
        leading: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: BackButtonWidget(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: deviceHeight * 0.02, right: deviceHeight * 0.02),

            ///TITLE OF THE SCREEN
            child: Text(
              "Security Settings",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(23, 24, 24, 1),
                fontSize: deviceHeight * 0.029,
              ),
            ),
          ),
          Container(
            color: const Color.fromRGBO(255, 255, 255, 1),
            child: Column(
              children: [
                ///CREDIT CARD SETTING USING CUSTOM WIDGET
                const RadioAndSwichCardWidget(
                  radioValue: 1,
                  settingsCatergory: "Credit Card",
                  subCategory: "Double Verfication",
                  description:
                      "Enter CVV & OTP code for more secure payment verification.",
                  groupValue: 0,
                  widgetType: WidgetType.radio,
                ),

                ///DIVIDER BETWEEN CREDIT CARD AND SINGLE VERIFICATION SETTING
                Padding(
                  padding: EdgeInsets.only(
                      left: deviceHeight * 0.02, right: deviceHeight * 0.02),
                  child: const Divider(
                    height: 0,
                    thickness: 1.0,
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                  ),
                ),

                ///SINGLE VERIFICATION SETTING USING CUSTOM WIDGET

                const RadioAndSwichCardWidget(
                  radioValue: 2,
                  isCategory: false,
                  subCategory: "Single Verification",
                  description:
                      "Enter CVV & OTP code for a swift & hassle-free payment verification.",
                  settingsCatergory: "",
                  widgetType: WidgetType.radio,
                  groupValue: 0,
                ),
              ],
            ),
          ),

          ///BIOMETRIC SETTING USING CUSTOM WIDGET

          const RadioAndSwichCardWidget(
              subCategory: "Activate Biometric Feature",
              description:
                  "To enjoy a seamless log in with fingerprint or face recognition.",
              settingsCatergory: "Biometric",
              widgetType: WidgetType.switchType),

          ///DEVICE SETTING USING CUSTOM WIDGET

          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                      content: Text(
                        "To set a PIN, this device needs to be set as trusted",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(37, 40, 49, 0.7),
                            fontSize: deviceHeight * 0.016),
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "No, cancel",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(0, 100, 210, 1),
                                    fontSize: deviceHeight * 0.018),
                              ),
                            ),
                            Container(
                                width: deviceWidth * 0.25,
                                alignment: Alignment.center,
                                height: deviceHeight * 0.053,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(0, 100, 210, 1),
                                    borderRadius: BorderRadius.circular(8)),

                                ///ROW FOR BUTTON NAME AND ICON
                                child: Text(
                                  "Yes, continue",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      fontSize: deviceHeight * 0.018),
                                ))
                          ],
                        )
                      ],
                      title: Text(
                        "Continue and set device as trusted?",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(23, 24, 24, 1),
                            fontSize: deviceHeight * 0.022),
                      ),
                    );
                  });
            },
            child: const RadioAndSwichCardWidget(
                subCategory: "Set Device as Trusted",
                description:
                    "Activate to set a Pin and Manage device connectivity.",
                settingsCatergory: "Device",
                widgetType: WidgetType.switchType),
          ),

          ///SET PIN SETTING USING CUSTOM WIDGET
          /// WHICH NAVIHATES TO SET PIN SCREEN
          GestureDetector(
            onTap: () {
              Get.to(() => const SetpinScreen());
            },
            child: const RadioAndSwichCardWidget(
                subCategory: "Set PIN",
                description:
                    "Set a 6 digit vẻification PIN to secure your accounts activities.",
                settingsCatergory: "Pin",
                widgetType: WidgetType.arrow),
          )
        ],
      ),
    );
  }
}
