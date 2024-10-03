import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_booking_app/view/Screens/Home%20Screen/Widget/home_radio_button_widget.dart';

class HomescreenContainer extends StatefulWidget {
  const HomescreenContainer({super.key});

  @override
  State<HomescreenContainer> createState() => _HomescreenContainerState();
}

class _HomescreenContainerState extends State<HomescreenContainer> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    log("${deviceHeight * 0.037}");
    return Expanded(
      child: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), 
                topRight: Radius.circular(20))),
        child: Padding(
          padding:  EdgeInsets.only(
             top: deviceHeight * 0.037,
              left: deviceWidth *0.037, //16
              right: deviceWidth *0.037, //16
          ),
          child: Column(
            children: [
              HomeRadioButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}
