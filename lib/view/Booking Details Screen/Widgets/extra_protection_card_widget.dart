
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Settings%20Screen/Widgets/settings_bold_catergory_widget.dart';

class ExtraProtectionCardWidget extends StatelessWidget {
  const ExtraProtectionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
  

    ///MAIN CONTAINER
    return Container(
      padding: EdgeInsets.all(deviceWidth * 0.04),
      height: deviceHeight * 0.214,
      width: deviceWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(13, 22, 52, 0.05))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //ROW FOR VERIFIED ICON , TEXT AND RUPEES
          Row(
            children: [
              ///ICON VERIFIED
              const Icon(
                Icons.verified_user,
                color: Color.fromRGBO(0, 100, 210, 1),
              ),
              SizedBox(
                width: deviceWidth * 0.02,
              ),

              ///TEXT USING WIDGET
              const SettingsBoldCatergoryWidget(
                settingsCatergory: "Travel Insurance",
              ),
              const Spacer(),

              ///RUPPESS TEXT
              Text(
                "\$125",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(23, 24, 24, 1),
                  fontSize: deviceHeight * 0.027,
                ),
              ),
            ],
          ),

          ///ROW1 FOR CHECKED ICON AND TEXT
          Row(children: [
            Icon(
              Icons.check,
              color: const Color.fromRGBO(45, 195, 198, 1),
              size: deviceWidth * 0.045,
            ),
            SizedBox(
              width: deviceWidth * 0.013,
            ),
            Text(
              "Coverage for Accidents up to \$10000",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(37, 40, 49, 0.5),
                fontSize: deviceHeight * 0.014,
              ),
            )
          ]),

          ///ROW2 FOR CHECKED ICON AND TEXT
          Row(children: [
            Icon(
              Icons.check,
              color: const Color.fromRGBO(45, 195, 198, 1),
              size: deviceWidth * 0.045,
            ),
            SizedBox(
              width: deviceWidth * 0.013,
            ),
            Expanded(
              child: Text(
                "Coverage for trip cancellation by passengers up to \$1250",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(37, 40, 49, 0.5),
                  fontSize: deviceHeight * 0.014,
                ),
              ),
            )
          ]),
          SizedBox(
            width: deviceHeight * 0.05,
          ),
          //CONTAINER FOR ADD INSURANCE BUTTON
          Container(
            width: deviceWidth,
            height: deviceHeight * 0.053,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(242, 243, 246, 1),
                borderRadius: BorderRadius.circular(8)),

            ///ROW IN THE CONTAINER FOR ICON AND TEXT
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///ADD ICON
                Icon(
                  Icons.add_circle,
                  color: const Color.fromRGBO(0, 100, 210, 1),
                  size: deviceWidth * 0.04,
                ),
                SizedBox(
                  width: deviceWidth * 0.013,
                ),

                ///ADD INSURANCE TEXT
                Text(
                  "Add Insurance",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(13, 22, 52, 1),
                    fontSize: deviceHeight * 0.018,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
