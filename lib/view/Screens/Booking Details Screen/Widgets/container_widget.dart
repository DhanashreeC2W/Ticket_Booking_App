import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET FOR BOOKING DETAILS SCREEN
class ContainerWidget extends StatefulWidget {
  final String data;
  final TextStyle textStyle;
  final bool? isSwitch;
  final Icon? icon;
  final String? descr;

  const ContainerWidget(
      {super.key,
      required this.data,
      required this.textStyle,
      this.isSwitch,
      this.icon,
      this.descr});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  ///FLAG TO HANDLE TOGGLE OF SWITCH
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;
    log("${deviceWidth * 0.040}");

    ///MAIN CONTAINER
    return Container(
      width: deviceWidth,
      height: deviceHeight * 0.057,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromRGBO(13, 22, 52, 0.05))),

      ///ROW FOR TEXT AND , SWITCH OR ICON
      child: Row(
        children: [
          widget.data == "Baggage"
              ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  widget.data,
                  style: widget.textStyle,
                ),
                  Text(
                      widget.descr!,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(37, 40, 49, 0.5),
                        fontSize: deviceHeight * 0.014,
                      ),
                    ),
                ],
              )
              :

              ///TEXT
              Text(
                  widget.data,
                  style: widget.textStyle,
                ),
          const Spacer(),

          ///CONDITION FOR SWITCH AND ICON , IF SWITCH NEED ISSWITCH PARAMETER SHOULB BE TRUE
          widget.isSwitch == true
              ?

              ///CUSTOM SWITCH BUTTON
              Transform.scale(
                  scale: 0.6,
                  child: Switch(
                      trackOutlineColor: const WidgetStatePropertyAll(
                        Colors.transparent,
                      ),
                      inactiveThumbColor: Colors.white,
                      trackColor: isSwitched == false
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(13, 22, 52, 0.05),
                            )
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(0, 100, 210, 1),
                            ),
                      value: isSwitched,
                      onChanged: (value) {
                        isSwitched = value;
                        setState(() {});
                      }),

                  ///ICON IF ISSWITCH PARAMETER NOT TRUE
                )
              : Padding(
                  padding: EdgeInsets.only(right: deviceWidth * 0.040),
                  child: Icon(
                    widget.icon!.icon,
                    size: widget.icon!.size,
                    color: const Color.fromRGBO(37, 40, 49, 0.5),
                  ),
                )
        ],
      ),
    );
  }
}
