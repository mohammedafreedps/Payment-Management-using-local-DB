import 'package:flutter/material.dart';
import 'package:paymentmanagementapp/presentation/screens/dash_board_screen/dash_board_screen.dart';
import 'package:paymentmanagementapp/presentation/screens/scan_recipt_screen.dart';
import 'package:paymentmanagementapp/presentation/screens/sent_and_request_screen.dart';
import 'package:paymentmanagementapp/presentation/screens/setting_screen/settings_screen.dart';
import 'package:paymentmanagementapp/presentation/styles.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;

  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          DashBoardScreen(),
          ScanReciptScreen(),
          SentAndRequestScreen(),
          SettingScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'DashBoard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner), label: 'Scan Recipt'),
          BottomNavigationBarItem(
              icon: Icon(Icons.send), label: 'Sent & Request'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: 'Settings'),
        ],
        backgroundColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: AppColors.accentColor,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
