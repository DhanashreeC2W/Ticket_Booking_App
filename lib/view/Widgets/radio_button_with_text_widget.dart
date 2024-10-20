import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///RADIO BUTTON WIDGET FOR HOME SCREEN
class RadioButtonWithTextWidget extends StatefulWidget {
  final String buttonName;
   int? groupVal;
  final int buttonVal;
   RadioButtonWithTextWidget(
      {super.key,
      required this.buttonName,
      required this.buttonVal,
      required this.groupVal});

  @override
  State<RadioButtonWithTextWidget> createState() =>
      _RadioButtonWithTextWidgetState();
}

class _RadioButtonWithTextWidgetState extends State<RadioButtonWithTextWidget> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio(
            activeColor: const Color.fromRGBO(206, 214, 221, 1),
            fillColor:
                const WidgetStatePropertyAll(Color.fromRGBO(0, 100, 210, 1)),
            value: widget.buttonVal,
            groupValue: widget.groupVal,
            onChanged: (value) {
              widget.groupVal = value;
              setState(() {});
            }),
        Text(
          widget.buttonName,
          style: GoogleFonts.inter(
              color: const Color.fromRGBO(34, 49, 63, 1),
              fontWeight: FontWeight.w500,
              fontSize: deviceHeight * 0.019),
        ),
      ],
    );
  }
}
