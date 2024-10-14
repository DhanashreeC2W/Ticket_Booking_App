import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountOptionsWidgets extends StatelessWidget {
  final Icon? optionIcon;
  final String optionName;
  final bool? showArrow;
  final bool? isDivider;
  final bool? isSettingsScreen;

  const AccountOptionsWidgets(
      {super.key,
      this.optionIcon,
      required this.optionName,
      this.isDivider = true,
      this.isSettingsScreen,
      this.showArrow = true});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        Row(
          children: [
            optionIcon != null
                ? Icon(
                    optionIcon!.icon,
                    color: const Color.fromRGBO(0, 100, 210, 1),
                    size: deviceHeight * 0.02,
                  )
                : const SizedBox(),
            isSettingsScreen == true
                ? const SizedBox()
                : SizedBox(width: deviceHeight * 0.012),
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
            const Spacer(),
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
        isDivider == false
            ? Container(
                height: 30,
                color: const Color.fromRGBO(242, 243, 246, 1),
              )
            : optionName == "Delete Account" || optionName == "Rate App"
                ? const SizedBox()
                : const Divider(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                  ),
      ],
    );
  }
}
