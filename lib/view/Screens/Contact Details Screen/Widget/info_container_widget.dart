import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoContainerWidget extends StatelessWidget {
  final String infoType;
  final TextEditingController controller;

  const InfoContainerWidget(
      {super.key, required this.infoType, required this.controller});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.006}");
    return Container(
      height: deviceHeight * 0.075,
      width: deviceWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(13, 22, 52, 0.05))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              infoType,
              style: GoogleFonts.inter(
                  fontSize: deviceHeight * 0.014,
                  color: const Color.fromRGBO(37, 40, 49, 0.5),
                  fontWeight: FontWeight.w500),
            ),
            infoType == "Country code"
                ? Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/flag.png",
                          height: 16,
                          width: 26.67,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: deviceWidth / 1.2,
                          child: TextField(
                            controller: controller,
                            cursorColor: const Color.fromRGBO(0, 0, 0, 0.5),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: controller.text,
                                hintStyle: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(13, 22, 52, 1),
                                  fontSize: 16,
                                )),
                          ),
                        ),
                      ],
                    ),
                  )
                : Expanded(
                    child: TextField(
                      controller: controller,
                      cursorColor: const Color.fromRGBO(0, 0, 0, 0.5),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: controller.text,
                          hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(13, 22, 52, 1),
                            fontSize: 16,
                          )),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
