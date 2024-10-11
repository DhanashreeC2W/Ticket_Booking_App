import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Account%20Screen/Widgets/account_options_widgets.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    log("${deviceHeight * 0.014}");
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          ///BLUE CONTAINER CONTAINIG USER INFO
          Container(
            padding: EdgeInsets.only(
                left: deviceWidth * 0.05,
                right: deviceWidth * 0.05,
                top: deviceHeight * 0.044),
            height: deviceHeight * 0.246,
            width: deviceWidth,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 100, 210, 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///HEADING TEXT
                Text(
                  "My Profile",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: deviceHeight * 0.022,
                  ),
                ),
                //ROW FOR PROFILE IMAGE,NAME,EMAIL,CONTACT NUMBER AND ICON
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///PROFILE PHOTO
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: deviceHeight * 0.033,
                        ),
                        height: 80,
                        width: 80,
                        child: Image.asset("assets/images/profile.png"),
                      ),
                    ),

                    ///COLUMN FOR NAME,EMAIL,CONTACT NUMBER,ICON
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///NAME
                        Text(
                          "Jos Creative",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: deviceHeight * 0.022, //20
                          ),
                        ),
                        ///EMAIL ID
                        Text(
                          "josphamdes@gmail.com",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: deviceHeight * 0.016, //14
                          ),
                        ),
                        ///CONTACT NUMBER
                        Text(
                          "+1 654 785 4462",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: deviceHeight * 0.016, //14
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.edit_square,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      // size: deviceHeight * 0.019,
                      //fill: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const AccountOptionsWidgets(
              optionIcon: Icon(Icons.navigation_outlined),
              optionName: "My Order"),
          const AccountOptionsWidgets(
            optionIcon: Icon(Icons.percent_sharp),
            optionName: "My Voucher",
            showArrow: false,
          ),
          const AccountOptionsWidgets(
              optionIcon: Icon(Icons.credit_card_rounded),
              optionName: "Payment Methods"),
          const AccountOptionsWidgets(
              optionIcon: Icon(Icons.person_add_alt),
              optionName: "Invite Friends"),
          const AccountOptionsWidgets(
            optionIcon: Icon(Icons.document_scanner_outlined),
            optionName: "Quick Login",
            isDivider: false,
          ),
          const AccountOptionsWidgets(
              optionIcon: Icon(Icons.question_mark_outlined),
              optionName: "My Order"),
          const AccountOptionsWidgets(
            optionIcon: Icon(Icons.settings_outlined),
            optionName: "Settings",
            isDivider: false,
          ),
          const AccountOptionsWidgets(
            optionIcon: Icon(Icons.login_outlined),
            optionName: "Log Out",
            isDivider: false,
          ),
        ],
      ),
    );
  }
}
