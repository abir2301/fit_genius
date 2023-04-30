import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/app_theme.dart';
import '../components/screen_header.dart';

class InitialScreen extends ConsumerStatefulWidget {
  InitialScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InitialScreenState();
}

class _InitialScreenState extends ConsumerState<InitialScreen> {
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
              screenHeader(
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
              CircularProgressIndicator(
                color: pink,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
