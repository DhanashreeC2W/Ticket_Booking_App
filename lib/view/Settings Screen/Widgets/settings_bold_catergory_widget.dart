import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsBoldCatergoryWidget extends StatelessWidget {
  final String settingsCatergory;
  final String? settingDescription;
  final bool? isdecription;
  const SettingsBoldCatergoryWidget(
      {super.key,
      required this.settingsCatergory,
      this.settingDescription,
      this.isdecription});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          settingsCatergory,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(13, 22, 52, 1),
            fontSize: deviceHeight * 0.018, //16
          ),
        ),
        isdecription == true
            ? Text(
                settingDescription!,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(37, 40, 49, 0.7),
                  fontSize: deviceHeight * 0.0161, //14
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
