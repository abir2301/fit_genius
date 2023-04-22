import 'package:app/features/program/presentation/screens/home-screen/home_screen.dart';
import 'package:app/features/program/presentation/screens/plan_screen.dart';
import 'package:app/features/program/presentation/screens/profile_screen.dart';
import 'package:app/features/program/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../../../core/app_theme.dart';
import '../states/toggle_switch_state.dart';

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
      icon: Icon(Iconsax.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Iconsax.folder),
      label: 'Jounal',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Iconsax.messages4),
      label: 'chat',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Iconsax.profile_2user),
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
    return ChangeNotifierProvider<ToggleSwitchState>(
        create: (context) => ToggleSwitchState(),
        child: Scaffold(
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
              // color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            )),
            showUnselectedLabels: true,
            iconSize: 25,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
            selectedItemColor: white,
            unselectedItemColor: Colors.black,
          ),
        ));
  }
}
