import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/view/Onboarding%20Screen/onboard_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB7k99XIN5T0dZQpd7WJq_tXUxnxOvP4bM",
          appId: "1:583774614795:android:8f6c98b5a125a0e9839e0e",
          messagingSenderId: "583774614795",
          projectId: "ticket-booking-app-d0c6d"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
