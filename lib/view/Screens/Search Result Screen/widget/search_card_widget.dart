import 'dart:developer';

import 'package:flutter/material.dart';

class SearchCardWidget extends StatelessWidget {
  const SearchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;
    log("${deviceWidth * 0.608}");
    return Container(
      height: deviceHeight * 0.256,
      width: deviceWidth * 0.608,
     decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color.fromRGBO(255,255,255,1)
     ),
      child:Column(
        children: [
          Row(
            children: [
            
            ],
          )
        ],
      ),
    );
  }
}