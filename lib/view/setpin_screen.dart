import 'package:flutter/material.dart';
import 'package:ticket_booking_app/view/widget/number_pin_widget.dart';

class SetpinScreen extends StatelessWidget {
  const SetpinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(255,255,255,1),
        body:  NumberPinWidget(
            pinType: "Set Pin",
            subTitle:
                "Enter 6 digits number for your PIN. Make sure the combination is not easy to guess."));
  }
}
