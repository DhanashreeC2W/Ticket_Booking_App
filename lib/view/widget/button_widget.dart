import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///COMMON BUTTON WIDGET USED IN MULTIPLE SCREENS
class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final Icon? buttonIcon;
  final Color buttonColor;
  final bool? isFullWidth;

  const ButtonWidget(
      {super.key,
      required this.buttonText,
      this.buttonIcon,
      required this.buttonColor,this.isFullWidth});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;

    return Container(
      alignment: Alignment.center,
      height: deviceHeight * 0.053,
      width: isFullWidth==true? deviceWidth:deviceWidth * 0.6810,
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonText,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              color: buttonColor == const Color.fromRGBO(255, 255, 255, 1)
                  ? const Color.fromRGBO(13, 22, 52, 1)
                  : const Color.fromRGBO(255, 255, 255, 1),
              fontSize: deviceHeight * 0.018,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          buttonIcon == null
              ? const SizedBox()
              : Icon(
                  buttonIcon!.icon,
                  color: Colors.white,
                  size: deviceWidth * 0.04,
                  
                ),
        ],
      ),
    );
  }
}
