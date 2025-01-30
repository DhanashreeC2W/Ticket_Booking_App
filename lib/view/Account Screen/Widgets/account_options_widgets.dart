import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

/// A WIDGET THAT DISPLAYS AN ACCOUNT OPTION WITH AN OPTIONAL ICON, ARROW, AND DIVIDER.
class AccountOptionsWidgets extends StatelessWidget {
  /// THE ICON FOR THE OPTION (OPTIONAL).
  final Icon? optionIcon;

  /// THE NAME OF THE OPTION.
  final String optionName;

  /// WHETHER TO SHOW AN ARROW AT THE END OF THE ROW (DEFAULT: TRUE).
  final bool? showArrow;

  /// WHETHER TO SHOW A DIVIDER BELOW THE OPTION (DEFAULT: TRUE).
  final bool? isDivider;

  /// WHETHER THE WIDGET IS USED IN THE SETTINGS SCREEN (AFFECTS STYLING).
  final bool? isSettingsScreen;

  const AccountOptionsWidgets({
    super.key,
    this.optionIcon,
    required this.optionName,
    this.isDivider = true,
    this.isSettingsScreen,
    this.showArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    /// GET THE DEVICE HEIGHT FOR RESPONSIVE UI.
    final deviceHeight = Get.height;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              /// DISPLAY THE OPTION ICON IF PROVIDED, OTHERWISE SHOW AN EMPTY SPACE.
              optionIcon != null
                  ? Icon(
                      optionIcon!.icon,
                      color: const Color.fromRGBO(0, 100, 210, 1),
                      size: deviceHeight * 0.02,
                    )
                  : const SizedBox(),

              /// ADD SPACE IF NOT ON THE SETTINGS SCREEN.
              isSettingsScreen == true
                  ? const SizedBox()
                  : SizedBox(width: deviceHeight * 0.012),

              /// DISPLAY THE OPTION NAME WITH CONDITIONAL STYLING.
              Text(
                optionName,
                style: GoogleFonts.inter(
                  color: isSettingsScreen == true
                      ? const Color.fromRGBO(37, 40, 49, 0.9)
                      : const Color.fromRGBO(37, 40, 49, 1),
                  fontWeight: isSettingsScreen == true
                      ? FontWeight.w400
                      : FontWeight.w500,
                  fontSize: isSettingsScreen == true
                      ? deviceHeight * 0.016
                      : deviceHeight * 0.018,
                ),
              ),

              /// PUSH REMAINING CONTENT TO THE END.
              const Spacer(),

              /// SHOW ARROW IF `showArrow` IS TRUE.
              showArrow == false
                  ? const Icon(null)
                  : Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: isSettingsScreen == true
                          ? const Color.fromRGBO(37, 40, 49, 0.5)
                          : const Color.fromRGBO(205, 212, 211, 1),
                      size: deviceHeight * 0.018,
                    ),
            ],
          ),
        ),

        /// SHOW A DIVIDER IF `isDivider` IS TRUE AND THE OPTION IS NOT "DELETE ACCOUNT" OR "RATE APP".
        isDivider == false
            ? Container(
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                height: deviceHeight * 0.028,
                color: const Color.fromRGBO(242, 243, 246, 1),
              )
            : optionName == "DELETE ACCOUNT" || optionName == "RATE APP"
                ? const SizedBox()
                : const Divider(
                    height: 30,
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                  ),
      ],
    );
  }
}
