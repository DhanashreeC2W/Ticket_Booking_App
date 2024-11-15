import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/controller/navbar_controller.dart';

class Navaigationbar extends StatefulWidget {
  const Navaigationbar({super.key});

  @override
  State<Navaigationbar> createState() => _NavaigationbarState();
}

class _NavaigationbarState extends State<Navaigationbar> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NavbarController(),
      builder: (navbarController) {
        return Scaffold(
          body: navbarController.allScreensList
              .elementAt(navbarController.currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/home.png")),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/transaction.png")),
                  label: "Transaction"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/person.png"),
                    color: Colors.transparent,
                  ),
                  label: "Account"),
            ],
            currentIndex: navbarController.currentIndex,
            onTap: navbarController.onTap,
            selectedItemColor: const Color.fromRGBO(0, 100, 210, 1),
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color.fromRGBO(37, 40, 49, 0.9),
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          ),
        );
      },
    );
  }
}
