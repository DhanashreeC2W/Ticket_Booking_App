import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET FOR CONTACT PERSON DETAILS SCREEN
class InfoContainerWidget extends StatelessWidget {
  ///TYPE OF INFO
  final String infoType;
  ///CONTROLLER FOR TEXTFEILD
  final TextEditingController controller;

  const InfoContainerWidget(
      {super.key, required this.infoType, required this.controller});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceHeight * 0.006}");
    ///MAIN CONTAINER CONTAINING INFO TYPE AND TEXTFEILD
    return Container(
      height: deviceHeight * 0.075,
      width: deviceWidth,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(13, 22, 52, 0.05))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        ///COLUMN FOR INFO TYPE AND TEXTFEILD
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
            ///CONDITION FOR COUNTRY CODE INFO TYPE , IT WILL CONTAIN IMAGE OF THE COUNTRY
            infoType == "Country code"
                ? Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/flag.png",
                          height: 16,
                          width: 26.67,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          width: deviceWidth / 1.4,
                          child: TextField(
                            controller: controller,
                            cursorColor: const Color.fromRGBO(0, 0, 0, 0.5),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: controller.text,
                                hintStyle: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
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
                            fontWeight: FontWeight.w600,
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
