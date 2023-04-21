import 'package:app/features/program/presentation/screens/home_screen.dart';
import 'package:app/features/program/presentation/screens/plan_screen.dart';
import 'package:app/features/program/presentation/screens/profile_screen.dart';
import 'package:app/features/program/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/app_theme.dart';

class FRTabbarScreen extends StatefulWidget {
  const FRTabbarScreen({super.key});

  @override
  State<FRTabbarScreen> createState() => _FRTabbarScreenState();
}

class _FRTabbarScreenState extends State<FRTabbarScreen> {
  int _select = 0;

  final screens = [
    HomeScreen(),
    PlanScreen(),
    ProfileScreen(),
    SettingsScreen()
  ];

  final List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.feed),
      label: 'Jounal',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'chat',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bgcolor,
      body: screens[_select],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //elevation: 1,
        backgroundColor: secondColor,
        items: items,
        onTap: ((value) => setState(() => _select = value)),
        currentIndex: _select,
        selectedLabelStyle: GoogleFonts.poppins(
            textStyle: const TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 10,
        )),
        showUnselectedLabels: true,
        iconSize: 25,
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 10,
        ),
        selectedItemColor: white,
        unselectedItemColor: const Color(0xFF9E9E9E),
      ),
    );
  }
}
