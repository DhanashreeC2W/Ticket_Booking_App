import 'package:flutter/material.dart';
import 'package:ticket_booking_app/view/widget/signin_signup_widget.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});

  @override  

  State createState()=> _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>{

  @override  
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Color.fromRGBO(255,255,255,1),
      body: SigninSignupWidget(signupSignin: "Sign Up"),
    );
  }

}