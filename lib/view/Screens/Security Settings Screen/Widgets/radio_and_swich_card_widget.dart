import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

enum WidgetType { radio, switchType, arrow }

class RadioAndSwichCardWidget extends StatefulWidget {
  
  final String settingsCatergory;
  final String subCategory;
  final String description;
  final bool? isCategory;
  final int? radioValue;
  final int groupValue;
  final WidgetType widgetType;
  final ValueChanged<int?>? onRadioChanged;
  final ValueChanged<bool>? onSwitchChanged;

  const RadioAndSwichCardWidget({
    super.key,
    this.radioValue,
    this.isCategory = true,
    required this.groupValue,
    required this.subCategory,
    required this.description,
    required this.settingsCatergory,
    required this.widgetType,
    this.onRadioChanged,
    this.onSwitchChanged,
  });

  @override
  State<RadioAndSwichCardWidget> createState() =>
      _RadioAndSwichCardWidgetState();
}

class _RadioAndSwichCardWidgetState extends State<RadioAndSwichCardWidget> {
  bool _isSwitchOn = false; // State for switch, if needed

  @override
  Widget build(BuildContext context) {
    final deviceHeight = Get.height;
    final deviceWidth = Get.width;

    Widget trailingWidget;

    switch (widget.widgetType) {
      case WidgetType.radio:
        trailingWidget = Radio<int>(
          value: widget.radioValue!,
          groupValue: widget.groupValue,
          onChanged: widget.onRadioChanged,
        );
        break;
      case WidgetType.switchType:
        trailingWidget = Switch(
          value: _isSwitchOn,
          onChanged: (value) {
            setState(() {
              _isSwitchOn = value;
            });
            if (widget.onSwitchChanged != null) {
              widget.onSwitchChanged!(value);
            }
          },
        );
        break;
      case WidgetType.arrow:
        trailingWidget = Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: deviceHeight * 0.02,
        );
        break;
    }

    return Container(
      width: deviceWidth,
      padding: EdgeInsets.all(deviceHeight * 0.02),
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!widget.isCategory!)
                  Text(
                    widget.subCategory,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(37, 40, 49, 1),
                        fontSize: deviceHeight * 0.018),
                  )
                else
                  Text(
                    widget.settingsCatergory,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(13, 22, 52, 1),
                        fontSize: deviceHeight * 0.018),
                  ),
                if (widget.isCategory == true)
                  Text(
                    widget.subCategory,
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(37, 40, 49, 1),
                        fontSize: deviceHeight * 0.018),
                  ),
                Text(
                  widget.description,
                  style: GoogleFonts.inter(
                      color: const Color.fromRGBO(37, 40, 49, 0.7),
                      fontWeight: FontWeight.w400,
                      fontSize: deviceHeight * 0.015),
                ),
              ],
            ),
          ),
          trailingWidget,
        ],
      ),
    );
  }
}
