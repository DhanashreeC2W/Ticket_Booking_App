import 'package:flutter/material.dart';
import 'package:ticket_booking_app/view/Widgets/back_button_widget.dart';

class SelectLanguageScreen extends StatelessWidget{
  const SelectLanguageScreen({super.key});

  @override  

  Widget build(BuildContext context){
    return const Scaffold(
      body: Column(
        children: [
          BackButtonWidget()
        ],
      ),
    );
  }
}