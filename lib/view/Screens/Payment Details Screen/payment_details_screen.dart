import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Payment%20Successful%20Screen/payment_successful_screen.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';
import 'package:ticket_booking_app/view/Widgets/radio_button_widget.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  @override
  Widget build(BuildContext dd) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    log("${deviceHeight * 0.014}");
    return Scaffold(
        backgroundColor: const Color.fromRGBO(253, 253, 253, 1),
        body: Padding(
          padding: EdgeInsets.only(
            top: deviceHeight * 0.03,
            left: deviceWidth * 0.04, //16
            right: deviceWidth * 0.04, //16
            bottom: deviceHeight * 0.03,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const BackButtonWidget(),
                SizedBox(height: deviceHeight * 0.04),
                Text(
                  "Digital payment method(s)",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: deviceHeight * 0.029,
                    color: const Color.fromRGBO(23, 24, 24, 1),
                  ),
                ),
                SizedBox(height: deviceHeight * 0.014),
                Text(
                  "Swipe left to set your default method",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: deviceHeight * 0.016,
                    color: const Color.fromRGBO(37, 40, 49, 0.5),
                  ),
                ),
                SizedBox(height: deviceHeight * 0.035),
                const RadioButtonWidget(
                  img: "assets/images/card.png",
                  title: "***8976",
                  subTitle: "Get 10\$ Discount",
                  subIcon: Icon(
                    Icons.verified,
                    color: Color.fromRGBO(176, 131, 0, 1),
                  ),
                  radioValue: 1,
                ),
                const Divider(
                  height: 45,
                  thickness: 1.5,
                  color: Color.fromRGBO(234, 234, 234, 1),
                ),
                const RadioButtonWidget(
                  img: "assets/images/paypal.png",
                  title: "Paypal",
                  subTitle: "Get 10\$ Discount",
                  subIcon: Icon(
                    Icons.verified,
                    color: Color.fromRGBO(176, 131, 0, 1),
                  ),
                  radioValue: 2,
                ),
                SizedBox(height: deviceHeight * 0.035),
                Text(
                  "Add methods",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: deviceHeight * 0.029,
                    color: const Color.fromRGBO(23, 24, 24, 1),
                  ),
                ),
                SizedBox(height: deviceHeight * 0.035),
                const RadioButtonWidget(
                  img: "assets/images/creditcard.png",
                  title: "Credit or debit card",
                  subTitle: "Get 10\$ Discount",
                  subTitleAdd: "Visa, Mastercard, AMEX and JCB",
                  subIcon: Icon(
                    Icons.verified,
                    color: Color.fromRGBO(176, 131, 0, 1),
                  ),
                  selectedbutton: "Add",
                ),

                ///DIVIDER BETWEEN TWO OPTIONS
                const Divider(
                  height: 45,
                  thickness: 1.5,
                  color: Color.fromRGBO(234, 234, 234, 1),
                ),
                const RadioButtonWidget(
                  img: "assets/images/refund.png",
                  title: "Transfer",
                  subTitle: "Get 10\$ Discount",
                  subTitleAdd:
                      "Transferring via ATM, Internet \nBanking & Mobile Banking",
                  subIcon: Icon(
                    Icons.verified,
                    color: Color.fromRGBO(176, 131, 0, 1),
                  ),
                  selectedbutton: "Add",
                ),
                const Spacer(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Subtotal",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(128, 128, 128, 1),
                                fontSize: deviceHeight * 0.017,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: const Color.fromRGBO(0, 100, 210, 1),
                              size: deviceHeight * 0.03,
                            ),
                          ],
                        ),
                        Text(
                          "\$132",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 22, 52, 1),
                            fontSize: deviceHeight * 0.033,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap:(){
                        Get.to(()=>const PaymentSuccessfulScreen());
                      },
                      child: const ButtonWidget(
                        buttonText: "Proceed The Payment",
                        buttonColor: Color.fromRGBO(0, 100, 210, 1),
                        buttonIcon: Icon(Icons.check_circle),
                      ),
                    )
                  ],
                )
              ]),
        ));
  }
}
