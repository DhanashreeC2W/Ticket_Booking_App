import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountOptionsWidgets extends StatelessWidget {
  final Icon optionIcon;
  final String optionName;
  final bool? showArrow;
  final bool? isDivider;

  const AccountOptionsWidgets(
      {super.key,
      required this.optionIcon,
      required this.optionName,
      this.isDivider=true,
      this.showArrow=true});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  optionIcon.icon,
                  color: const Color.fromRGBO(0, 100, 210, 1),
                  size: deviceHeight * 0.02,
                ),
                 SizedBox(width: deviceHeight * 0.012),
                Text(
                  optionName,
                  style: GoogleFonts.inter(
                    color: const Color.fromRGBO(37, 40, 49, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: deviceHeight * 0.018,
                  ),
                ),
                const Spacer(),
                showArrow == false
                    ? const Icon(null)
                    : Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: const Color.fromRGBO(205, 212, 211, 1),
                        size: deviceHeight * 0.018,
                      ),
              ],
            ),
          ),
          isDivider == false
              ? Container(
                  height: 30,
                  color: const Color.fromRGBO(242, 243, 246, 1),
                )
              : const Divider(),
        ],
      ),
    );
  }
}
