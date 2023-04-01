import 'package:app/features/auth/presentation/components/rounded_button.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';

class WelcomingScreen extends StatefulWidget {
  const WelcomingScreen({super.key});

  @override
  State<WelcomingScreen> createState() => _WelcomingScreenState();
}

class _WelcomingScreenState extends State<WelcomingScreen> {
  @override
  Widget build(BuildContext context) {
    final padding_v = MediaQuery.of(context).size.width * 0.25;
    final padding_h = MediaQuery.of(context).size.width * 0.1;

    return Scaffold(
      body: ListView(children: [
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: padding_v, horizontal: padding_h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const screenHeader(
                title: "Fit-GeniusApp",
                size: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Container(
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
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
