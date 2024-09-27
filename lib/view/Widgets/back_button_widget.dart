import 'package:flutter/material.dart';
import 'package:get/get.dart';

///COMMON BACK BUTTON WIDGET USED IN ALMOST ALL SCREEN
class BackButtonWidget extends StatelessWidget {
  final bool? isWhiteColor;
  const BackButtonWidget({super.key, this.isWhiteColor});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;

    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: isWhiteColor == true
            ? const Color.fromRGBO(255, 255, 255, 1)
            : const Color.fromRGBO(13, 22, 52, 1),
        size: deviceHeight * 0.029,
      ),
    );
  }
}