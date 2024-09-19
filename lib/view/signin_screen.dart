import 'package:flutter/material.dart';
import 'package:ticket_booking_app/view/widget/signin_signup_widget.dart';

class SigninScreen extends StatefulWidget{
  const SigninScreen({super.key});

  @override  

  State createState()=> _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen>{

  @override  
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Color.fromRGBO(255,255,255,1),
      body: SigninSignupWidget(signupSignin: "Sign In"),
    );
  }

}