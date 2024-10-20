import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomsheetWeightContainer extends StatefulWidget {
  const BottomsheetWeightContainer({super.key});

  @override
  State<BottomsheetWeightContainer> createState() => _BottomsheetWeightContainerState();
}

class _BottomsheetWeightContainerState extends State<BottomsheetWeightContainer> {
  @override
  Widget build(BuildContext context) {
     final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceWidth*0.0}");
    return Row(
      children: [
        Container(
          height: deviceHeight * 0.066,
          width: deviceWidth * 0.258,
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        ),
      ],
    );
  }
}