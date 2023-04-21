import 'package:app/core/app_theme.dart';
import 'package:app/features/auth/presentation/screens/home_screen.dart';
import 'package:app/features/program/presentation/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:app/features/auth/presentation/screens/test.dart';
import 'features/auth/data/data_source/network.dart';
import 'features/auth/presentation/screens/login_screen.dart';

import 'features/auth/presentation/screens/registration-screen.dart';
import 'features/auth/presentation/screens/welcoming_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  NetworkHandler networkHandler = NetworkHandler();
  await dotenv.load(fileName: "assets/.env");
  initialize(networkHandler);

  runApp(const MyApp());
}

void initialize(NetworkHandler networkHandler) async {
  await networkHandler
      .checkServerConnection()
      .then((value) => {
            print("valll ==== $value"),
          })
      .catchError((errro) => {print("errooor r" + errro.toString())});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/jouney',
      routes: {
        '/test': (context) => Test(),
        '/': (context) => const WelcomingScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/jouney': (context) =>  FRTabbarScreen(),
      },
    );
  }
}
