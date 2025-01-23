import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Search%20Result%20Screen/widget/search_card_widget.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = Get.width;
    final deviceHeight = Get.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 100, 210, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Padding(
            padding: EdgeInsets.only(
              top: deviceHeight * 0.03,
              left: deviceWidth * 0.05,
              right: deviceWidth * 0.05,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ///BACK BUTTON
                    const BackButtonWidget(
                      isWhiteColor: true,
                    ),
                    SizedBox(
                      width: deviceWidth / 4.5,
                    ),

                    ///TOP NAME
                    Text(
                      "Search Flights",
                      style: GoogleFonts.inter(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: deviceHeight * 0.022,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Global Map.png"),
                        fit: BoxFit.cover,
                      ),
                    ),

                    ///LISTVIEW BUILDER TO SHOW SEARCH CARDS
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          ///CARD WIDGET
                          return const SearchCardWidget();
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
