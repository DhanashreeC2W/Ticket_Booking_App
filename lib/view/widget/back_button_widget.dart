import 'package:flutter/material.dart';
import 'package:get/get.dart';

///COMMON BACK BUTTON WIDGET USED IN ALMOST ALL SCREEN
class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;

    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Icon(
        Icons.arrow_back_ios,
        color: const Color.fromRGBO(13, 22, 52, 1),
        size: deviceHeight * 0.029,
      ),
    );
  }
}
