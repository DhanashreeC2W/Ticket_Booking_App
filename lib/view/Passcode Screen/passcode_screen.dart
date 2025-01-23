import 'package:flutter/material.dart';
import 'package:ticket_booking_app/view/Widgets/number_pin_widget.dart';

class PasscodeScreen extends StatefulWidget {
  const PasscodeScreen({super.key});

  @override
  State createState() => _PasscodeScreenstate();
}

class _PasscodeScreenstate extends State<PasscodeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          ///PASSCODE SCREEN USING WIDGET
          NumberPinWidget(
            pinType: "Passcode",
            subTitle: "Enter Your Passcode to Proceed the Payment",
          )
        ],
      ),
    );
  }
}
