import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckboxWithButtonWidget extends StatefulWidget {
  const CheckboxWithButtonWidget({super.key});

  @override
  State<CheckboxWithButtonWidget> createState() =>
      _CheckboxWithButtonWidgetState();
}

class _CheckboxWithButtonWidgetState extends State<CheckboxWithButtonWidget> {
  bool isChecked = false;
  Color getColor() {
    if (isChecked == false) {
      return Colors.transparent;
    } else {
      isChecked = true;
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    log("${deviceHeight * 0.018}");
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              fillColor: WidgetStateProperty.all(getColor()),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            SizedBox(
                width: deviceWidth * 0.622,
                height: deviceHeight * 0.048,
                child: Text(
                  "I understand and accept all the above risks regarding my acount deletion.",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(80, 83, 83, 1),
                    fontSize: deviceHeight * 0.018,
                  ),
                )),
          ],
        ),
        const SizedBox(height: 20,),
        Container(
            alignment: Alignment.center,
            height: deviceHeight * 0.053,
            width: deviceWidth,
            decoration: BoxDecoration(
                color: isChecked == false
                    ? const Color.fromRGBO(218, 235, 255, 1)
                    : const Color.fromRGBO(0, 100, 210, 1),
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              "Yes,Continue",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(255, 255, 255, 1),
                fontSize: deviceHeight * 0.018,
              ),
            ))
      ],
    );
  }
}
