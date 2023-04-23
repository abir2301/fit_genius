import 'package:app/features/auth/presentation/components/rounded_button.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';

import '../../../../core/app_theme.dart';

class WelcomingScreen extends StatefulWidget {
  const WelcomingScreen({super.key});

  @override
  State<WelcomingScreen> createState() => _WelcomingScreenState();
}

class _WelcomingScreenState extends State<WelcomingScreen> {
  @override
  Widget build(BuildContext context) {
    final padding_v = MediaQuery.of(context).size.width * 0.1;
    final padding_h = MediaQuery.of(context).size.width * 0.1;

    return Scaffold(
      backgroundColor: bgcolor,
      body: ListView(children: [
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: padding_v, horizontal: padding_h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const screenHeader(
                title: "Fit-Genius \n App",
                size: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Container(
                height: padding_h * 7,
                child: Image.asset("assets/images/yoga2.png"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              RoundedButton(
                width: MediaQuery.of(context).size.width * 0.7,
                text: 'Sign up',
                onPress: () {
                  Navigator.pushNamed(context, '/register');
                },
                withBgColor: true,
              ),
              RoundedButton(
                width: MediaQuery.of(context).size.width * 0.7,
                text: 'Login',
                onPress: () {
                  Navigator.pushNamed(context, '/login');
                },
                withBgColor: false,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
