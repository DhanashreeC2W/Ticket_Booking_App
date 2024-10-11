import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_booking_app/view/Screens/Search%20Result%20Screen/widget/search_card_widget.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 100, 210, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: deviceHeight * 0.03,
                left: deviceWidth * 0.04, //16
                right: deviceWidth * 0.04, //16
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const BackButtonWidget(
                        isWhiteColor: true,
                      ),
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
                  Container(
                    height: deviceHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/Global Map.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return const SearchCardWidget();
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
