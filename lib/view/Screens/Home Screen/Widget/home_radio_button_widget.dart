import 'package:flutter/material.dart';

class HomeRadioButtonWidget extends StatelessWidget {
  const HomeRadioButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(value: 1, groupValue: 0, onChanged: (value) {}),
      ],
    );
  }
}
