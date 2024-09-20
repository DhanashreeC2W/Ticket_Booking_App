import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninSignupWidget extends StatelessWidget {
  final String signupSignin;
  const SigninSignupWidget({super.key, required this.signupSignin});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    //log("${deviceWidth * 0.196}");
    return Padding(
      padding: EdgeInsets.only(
          top: deviceHeight * 0.023,
          left: deviceWidth * 0.04, //16
          right: deviceWidth * 0.04 //16
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ///SIGN IN OR SIGN UP TEXT
          Text(
            signupSignin,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(13, 22, 52, 1),
              fontSize: deviceHeight * 0.045,
            ),
          ),

          ///HEADERLINE
          Text(
            "Start Your Journey with affordable price",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: deviceHeight * 0.016,
                color: const Color.fromRGBO(128, 128, 128, 1)),
          ),

          ///EMAIL AND PASSWORD TEXTFEILDS
          SizedBox(

            height: signupSignin=="Sign In"? 170:80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "EMAIL",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: deviceHeight * 0.014,
                      color: const Color.fromRGBO(128, 128, 128, 1)),
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(13, 22, 52, 0.05),
                              width: 1))),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      enabledBorder: InputBorder.none,
                      hintStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(13, 22, 52, 1),
                        fontSize: deviceHeight * 0.023,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                signupSignin=="Sign In"?
                Text(
                  "PASSWORD",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: deviceHeight * 0.014,
                      color: const Color.fromRGBO(128, 128, 128, 1)),
                ):const SizedBox(),
                signupSignin=="Sign In"?
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(13, 22, 52, 0.05),
                              width: 1))),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      enabledBorder: InputBorder.none,
                      hintStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(13, 22, 52, 1),
                        fontSize: deviceHeight * 0.023,
                      ),
                    ),
                  ),
                ):const SizedBox(height: 0,),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: deviceHeight * 0.053,
            width: deviceWidth,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 100, 210, 1),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  signupSignin,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: deviceHeight * 0.018,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: deviceWidth * 0.04,
                ),
              ],
            ),
          ),
          Center(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: "Or ",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(37, 40, 49, 0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.023,
                ),
              ),
              TextSpan(
                text: signupSignin,
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(37, 40, 49, 0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.023,
                ),
              ),
              TextSpan(
                text: " With ",
                style: GoogleFonts.inter(
                  color: const Color.fromRGBO(37, 40, 49, 0.7),
                  fontSize: deviceHeight * 0.023,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ])),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/images/fb.png",
                  height: deviceHeight * 0.091, width: deviceWidth * 0.196),
              Image.asset("assets/images/google.png",
                  height: deviceHeight * 0.091, width: deviceWidth * 0.196),
              Image.asset("assets/images/apple.png",
                  height: deviceHeight * 0.091, width: deviceWidth * 0.196),
            ],
          ),
          Center(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: "Don’t Have an Account?",
                   style: GoogleFonts.inter(
                    color: const Color.fromRGBO(37, 40, 49, 0.7),
                    fontSize: deviceHeight * 0.023,
                    fontWeight: FontWeight.w500,
                  ),
              ),
                TextSpan(
                text: signupSignin,
                   style: GoogleFonts.inter(
                    color: const Color.fromRGBO(0,100,210,1),
                    fontSize: deviceHeight * 0.023,
                    fontWeight: FontWeight.w500,
                  ),
              )
            ])),
          )
        ],
      ),
    );
  }
}
