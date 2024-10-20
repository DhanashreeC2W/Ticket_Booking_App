import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///COMMON BUTTON WIDGET USED IN MULTIPLE SCREENS
class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final Icon? buttonIcon;
  final Color buttonColor;
  final bool? isFullWidth;
  final bool? isIconFront;

  const ButtonWidget(
      {super.key,
      required this.buttonText,
      this.buttonIcon,
      required this.buttonColor,
      this.isIconFront,
      this.isFullWidth});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;

    ///CONTAINER FOR CUSTOM BUTTON
    return Container(
      alignment: Alignment.center,
      height: deviceHeight * 0.053,
      width: isFullWidth == true ? deviceWidth : deviceWidth * 0.6810,
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(8)),

      ///ROW FOR BUTTON NAME AND ICON
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ///CONDITION IF USER WANT ICON AND AT LEFT SIDE OF BUTTON NAME
          isIconFront == true
              ? Row(
                  children: [
                   buttonIcon == null
                        ? const SizedBox()
                        : Icon(
                            buttonIcon!.icon,
                            color: Colors.white,
                            size: deviceWidth * 0.04,
                          ),
                    Text(
                      buttonText,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        //CONDITION FOR TEXT COLOR AS PER BUTTON COLOR
                        color: buttonColor ==
                                    const Color.fromRGBO(255, 255, 255, 1) ||
                                buttonColor ==
                                    const Color.fromRGBO(242, 243, 246, 1)
                            ? const Color.fromRGBO(13, 22, 52, 1)
                            : const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: deviceHeight * 0.018,
                      ),
                    ),
                  ],
                )
              :

              ///ELSE , IF USER WANT ICON AND AT RIGHT SIDE OF BUTTON NAME
              Row(
                  children: [
                    Text(
                      buttonText,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: buttonColor ==
                                    const Color.fromRGBO(255, 255, 255, 1) ||
                                buttonColor ==
                                    const Color.fromRGBO(242, 243, 246, 1)
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
                )
        ],
      ),
    );
  }
}
