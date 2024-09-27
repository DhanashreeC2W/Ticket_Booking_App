import 'package:flutter/material.dart';
import 'package:ticket_booking_app/view/Screens/Signup%20Signin%20Screen/Widget/signin_signup_widget.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: const SigninSignupWidget(signupSignin: "Sign In"),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255,255,255,1),
      ),
    );
  }
}
