import 'package:flutter/material.dart';

///SWITCH BUTTON WIDGET
class SwitchButtonWidget extends StatefulWidget {
  final String switchButtonText;
  final TextStyle? textStyle;
  final bool? isDivider;

  const SwitchButtonWidget(
      {super.key,
      required this.switchButtonText,
      this.textStyle,
      this.isDivider});

  @override
  State createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  /// BOOLEAN VALUE TO TRACK THE SWITCH STATE
  bool isSwicthed = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.switchButtonText,
              style: widget.textStyle,
            ),
            const Spacer(),

            /// CUSTOM SCALED SWITCH WIDGET
            Transform.scale(
              scaleX: 0.9,
              scaleY: 0.7,
              child: Switch(
                activeColor: const Color.fromRGBO(255, 255, 255, 1),
                activeTrackColor: const Color.fromRGBO(0, 100, 210, 1),
                inactiveTrackColor: const Color.fromRGBO(13, 22, 52, 0.05),
                inactiveThumbColor: const Color.fromRGBO(255, 255, 255, 1),
                trackOutlineColor:
                    const WidgetStatePropertyAll(Colors.transparent),
                splashRadius: 0.5,
                value: isSwicthed,
                onChanged: (value) {
                  setState(() {
                    isSwicthed = value;
                  });
                },
              ),
            ),
          ],
        ),
        ///DIVIDER IF NEEDED
        widget.isDivider == true
            ? const Divider(
                color: Color.fromRGBO(13, 22, 52, 0.05),
                height: 0,
              )
            : const SizedBox()
      ],
    );
  }
}
