import 'package:app/features/auth/presentation/components/regsiter-screens_pattern.dart';
import 'package:app/features/auth/presentation/components/rounded_button.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CongratScreen extends StatefulWidget {
  const CongratScreen({super.key});

  @override
  State<CongratScreen> createState() => _CongratScreenState();
}

class _CongratScreenState extends State<CongratScreen> {
  @override
  Widget build(BuildContext context) {
    return RegsiterScreensPatern(list: [
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Image.asset("assets/images/healthy-food.png"),
            screenHeader(
                title: "Congratulations",
                size: MediaQuery.of(context).size.width * 0.08),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Text(
              textAlign: TextAlign.center,
              "Your account has been successfully created .Enjoy the service",
              style: GoogleFonts.hahmlet(
                  textStyle: const TextStyle(
                color: Color(0xff717171),
                fontWeight: FontWeight.w500,
                fontSize: 22,
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.04,
            ),
            RoundedButton(
                text: "Start Your Trip ",
                onPress: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                withBgColor: true,
                width: MediaQuery.of(context).size.width * 0.5)
          ],
        ),
      )
    ]);
  }
}
