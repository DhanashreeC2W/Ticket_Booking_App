import 'dart:developer';

import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Delete%20Account%20Screen/Widget/checkbox_with_button_widget.dart';
import 'package:ticket_booking_app/view/Screens/Delete%20Account%20Screen/Widget/delete_account_widget.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    log("${deviceHeight * 0.028}");

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
            const BackButtonWidget(),
            Text(
              "Delete Account",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(23, 24, 24, 1),
                fontSize: deviceHeight * 0.029,
              ),
            ),
            Center(child: Image.asset("assets/images/delete_ac.png")),
            SizedBox(
                width: deviceWidth * 0.49,
                child: Text(
                  "You sure want to delete your account?",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(37, 40, 49, 1),
                    fontSize: deviceHeight * 0.029,
                  ),
                )),
            const DeleteAccountWidget(
              warnings: "If you delete your account:",
            ),
            BulletedList(
              bulletColor: const Color.fromRGBO(13, 13, 13, 1),
              bullet: Icon(
                Icons.circle,
                size: deviceHeight * 0.01,
              ),
              listItems: const [
                DeleteAccountWidget(
                    warnings: "Your remaining tiket Points ",
                    boldWarning: "cannot be used anymore."),
                DeleteAccountWidget(
                    warnings: "Your tiket Elite Rewards benefits ",
                    boldWarning: "will not be available anymore."),
                DeleteAccountWidget(
                  warnings: "All your pending rewards",
                  boldWarning: "will be deleted.",
                ),
                DeleteAccountWidget(
                    warnings: "All rewards from using credit card can no",
                    boldWarning: "longer be obtained."),
              ],
            ),
            const CheckboxWithButtonWidget(),
          ],
        ),
      ),
    );
  }
}
