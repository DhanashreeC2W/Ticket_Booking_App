// ignore_for_file: unnecessary_string_interpolations

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void signInWithFirebaseAuth(
      TextEditingController emailCntr, TextEditingController passCntr) async {
    if (emailCntr.text.isNotEmpty && passCntr.text.isNotEmpty) {
      try {
        UserCredential userCredential =
            await _firebaseAuth.createUserWithEmailAndPassword(
                email: emailCntr.text, password: passCntr.text);
        log("UserCredentials : ${userCredential.user!.email}");
      } on FirebaseAuthException catch (error) {
        log("${error.code}");
        log("${error.message}");
      }
    }
  }
   void signUpWithFirebaseAuth(
      TextEditingController emailCntr, TextEditingController passCntr) async {
    if (emailCntr.text.isNotEmpty ) {
      try {
        UserCredential userCredential =
            await _firebaseAuth.signInWithEmailAndPassword(
                email: emailCntr.text, password: passCntr.text);
        log("UserCredentials : ${userCredential.user!.email}");
      } on FirebaseAuthException catch (error) {
        log("${error.code}");
        log("${error.message}");
      }
    }else{
      log("UNSUCCESFULL");
    }
  }
}
