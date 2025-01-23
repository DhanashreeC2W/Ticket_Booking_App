import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageRadioButtonWidget extends StatefulWidget {
  final String languageNAme;
  final int radioValue;

  const LanguageRadioButtonWidget(
      {super.key, required this.languageNAme, required this.radioValue});

  @override
  State<LanguageRadioButtonWidget> createState() =>
      _LanguageRadioButtonWidgetState();
}

class _LanguageRadioButtonWidgetState extends State<LanguageRadioButtonWidget> {
  int? _selectedRadioValue=1;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    return Column(
      children: [
        Row(
          children: [
            ///OPTIONS
            Text(
              widget.languageNAme,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(37, 40, 49, 0.9),
                fontSize: deviceHeight * 0.016,
              ),
            ),
            const Spacer(),
            ///RADIO BUTTON
            Radio(
              ///COLOR CONDITION IF RADIO NOT SELECTED
                fillColor: widget.radioValue == _selectedRadioValue
                    ? const WidgetStatePropertyAll(
                        Color.fromRGBO(0, 100, 210, 1))
                    : const WidgetStatePropertyAll(Color.fromARGB(255, 212, 210, 210)),
                value: widget.radioValue,
                groupValue: _selectedRadioValue,
                toggleable: true,
                onChanged: (value) {
                  _selectedRadioValue = value;
                  setState(() {});
                }),
          ],
        ),
        const Divider(
          height: 0,
          color: Color.fromRGBO(13, 22, 52, 0.05),
        )
      ],
    );
  }
}
