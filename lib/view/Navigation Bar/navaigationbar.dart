import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/controller/navbar_controller.dart';

/// THIS PROVIDES A BOTTOM NAVIGATION BAR USING GETX FOR STATE MANAGEMENT.
class Navaigationbar extends StatefulWidget {
  const Navaigationbar({super.key});

  @override
  State<Navaigationbar> createState() => _NavaigationbarState();
}

class _NavaigationbarState extends State<Navaigationbar> {
  @override
  Widget build(BuildContext context) {
    /// USING GETX'S GETBUILDER FOR STATE MANAGEMENT
    /// INITIALIZES THE NAVBAR CONTROLLER AND REBUILDS UI WHEN THE STATE CHANGES
    return GetBuilder<NavbarController>(
      init: NavbarController(),
      builder: (navbarController) {
        return Scaffold(
          /// BODY OF THE SCAFFOLD DISPLAYING THE CURRENT SCREEN BASED ON INDEX
          body: navbarController.allScreensList
              .elementAt(navbarController.currentIndex),

          /// BOTTOM NAVIGATION BAR
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              /// HOME NAVIGATION ITEM
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),

              /// TRANSACTION NAVIGATION ITEM
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/transaction.png")),
                label: "Transaction",
              ),

              /// ACCOUNT NAVIGATION ITEM
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Account",
              ),
            ],

            /// CURRENTLY SELECTED INDEX
            currentIndex: navbarController.currentIndex,

            /// FUNCTION TO HANDLE TAPS ON NAVIGATION ITEMS
            onTap: navbarController.onTap,

            /// STYLE PROPERTIES FOR SELECTED AND UNSELECTED ITEMS
            selectedItemColor: const Color.fromRGBO(0, 100, 210, 1),
            unselectedItemColor: const Color.fromRGBO(37, 40, 49, 0.9),

            /// BACKGROUND COLOR OF THE NAVIGATION BAR
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),

            /// TYPE OF THE NAVIGATION BAR (FIXED ITEMS)
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
    );
  }
}
