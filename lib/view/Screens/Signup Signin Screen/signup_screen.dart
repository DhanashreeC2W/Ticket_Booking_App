import 'package:flutter/material.dart';
import 'package:ticket_booking_app/view/Screens/Signup%20Signin%20Screen/Widget/signin_signup_widget.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});

  @override  

  State createState()=> _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>{

  @override  
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(255,255,255,1),
      body: const SigninSignupWidget(signupSignin: "Sign Up"),
       appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255,255,255,1),
      ),
    );
  }

}