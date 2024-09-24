

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioButtonWidget extends StatefulWidget {
  final String? img;
  final String? title;
  final String? subTitle;
  final Icon? subIcon;
  final int? radioValue;
  final String?selectedbutton;
  final String?subTitleAdd;

  const RadioButtonWidget(
      {super.key,
      this.img,
      this.title,
      this.subTitle,
      this.subIcon,
      this.radioValue,
      this.selectedbutton,
      this.subTitleAdd,
      });

  @override
  State createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
   int _selectedPaymentOption = 1;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    //log("${ deviceHeight * 0.019}");
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          widget.img!,
          height: deviceHeight * 0.059,
          width: deviceHeight * 0.036,
        ),
         SizedBox(width: deviceWidth * 0.029,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title!,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: deviceHeight * 0.015,
                color: const Color.fromRGBO(13, 22, 52, 1),
              ),
            ),
            widget.selectedbutton=="Add"?
            Text(widget.subTitleAdd!,
               style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize:deviceHeight * 0.013,
                color: const Color.fromRGBO(37,40,49,0.7),
              ),
            ):const SizedBox(),
            SizedBox(height: deviceHeight * 0.006,),
            Row(
              children: [
                Icon(
                  widget.subIcon!.icon,
                  size: deviceHeight * 0.017,
                  color: widget.subIcon!.color,
                ),
                 SizedBox(width:deviceWidth * 0.015,),
                Text(
                  widget.subTitle!,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(37, 40, 49, 0.5),
                    fontSize: deviceHeight * 0.014,
                  ),
                ),
              ],
            )
          ],
        ),
    
        const Spacer(),
        widget.selectedbutton=="Add"?
        Text("Add",
               style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize:  deviceHeight * 0.022,
                color: const Color.fromRGBO(0,100,210,1),
              ),
            ):
        Radio(
            value: widget.radioValue,
            groupValue: _selectedPaymentOption,
            fillColor: WidgetStateProperty.all(const Color.fromRGBO(0,100,210,1)),
            onChanged: (value) {
              setState(() {
                _selectedPaymentOption = value!;
              });
            })
      ],
    );
  }
}
