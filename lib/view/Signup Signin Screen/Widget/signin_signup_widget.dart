
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Navigation%20Bar/navaigationbar.dart';
import 'package:ticket_booking_app/view/Signup%20Signin%20Screen/signin_screen.dart';
import 'package:ticket_booking_app/view/Widgets/button_widget.dart';

import '../../../controller/firebase_auth_controller.dart';
import '../signup_screen.dart';

class SigninSignupWidget extends StatefulWidget {
  final String signupSignin;
  const SigninSignupWidget({super.key, required this.signupSignin});

  @override
  State<SigninSignupWidget> createState() => _SigninSignupWidgetState();
}

class _SigninSignupWidgetState extends State<SigninSignupWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
  
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: deviceHeight * 0.02,
            left: deviceWidth * 0.04, //16
            right: deviceWidth * 0.04 //16
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///SIGN IN OR SIGN UP TEXT
            Text(
              widget.signupSignin,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(13, 22, 52, 1),
                fontSize: deviceHeight * 0.045,
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.012,
            ),
      
            ///HEADERLINE
            Text(
              "Start Your Journey with affordable price",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: deviceHeight * 0.016,
                  color: const Color.fromRGBO(128, 128, 128, 1)),
            ),
            SizedBox(
              height: deviceHeight * 0.042,
            ),
      
            ///EMAIL AND PASSWORD TEXTFEILDS
            SizedBox(
              height: widget.signupSignin == "Sign In" ? 170 : 80,
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
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
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
      
                  ///PASSWORD TEXTFEILD ONLY ON SIGN IN SCREEN
                  widget.signupSignin == "Sign In"
                      ? Text(
                          "PASSWORD",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: deviceHeight * 0.014,
                              color: const Color.fromRGBO(128, 128, 128, 1)),
                        )
                      : const SizedBox(),
                  widget.signupSignin == "Sign In"
                      ? Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(13, 22, 52, 0.05),
                                      width: 1))),
                          child: TextField(
                            controller: _passController,
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
                        )
                      : const SizedBox(
                          height: 0,
                        ),
                ],
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.052,
            ),
            GestureDetector(
                onTap: () {
                   if( widget.signupSignin == "Sign In"){
                  FirebaseAuthController().signInWithFirebaseAuth(_emailController, _passController);
                   Get.to(() => const SignUpScreen());
                }else{
                    FirebaseAuthController().signUpWithFirebaseAuth(_emailController, _passController);
                     Get.to(() => const Navaigationbar());
                }
                },
                child: ButtonWidget(
                  buttonText: widget.signupSignin,
                  buttonColor: const Color.fromRGBO(0, 100, 210, 1),
                  isFullWidth: true,
                  buttonIcon: const Icon(Icons.check_circle),
                )),
            SizedBox(
              height: deviceHeight * 0.042,
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
                  text: widget.signupSignin,
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
            SizedBox(
              height: deviceHeight * 0.042,
            ),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/fb.png",
                  //height: deviceHeight * 0.091, width: deviceWidth * 0.196
                ),
                SizedBox(
                  height: deviceHeight * 0.042,
                ),
                Image.asset(
                  "assets/images/google.png",
                ),
                SizedBox(
                  height: deviceHeight * 0.042,
                ),
                Image.asset(
                  "assets/images/apple.png",
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.042,
            ),
            GestureDetector(
              onTap: () {
                widget.signupSignin == "Sign Up"
                    ? Get.to(() => const SigninScreen())
                    : Get.to(() => const SignUpScreen());
              },
              child: Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: widget.signupSignin == "Sign In"
                        ? "Don’t Have an account?"
                        : "Already have an account?",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(37, 40, 49, 0.7),
                      fontSize: deviceHeight * 0.023,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: widget.signupSignin == "Sign In" ? " Sign Up" : " Sign In",
                    style: GoogleFonts.inter(
                      color: const Color.fromRGBO(0, 100, 210, 1),
                      fontSize: deviceHeight * 0.023,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
