import 'package:app/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

import 'features/auth/presentation/screens/login_screen.dart';
import 'features/auth/presentation/screens/onboarding_screen.dart';
import 'features/auth/presentation/screens/register_screen.dart';
import 'features/auth/presentation/screens/welcoming_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: appTheme,
      initialRoute: '/register',
      routes: {
        '/': (context) => const WelcomingScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => Onbording()
      },
    );
  }
}
