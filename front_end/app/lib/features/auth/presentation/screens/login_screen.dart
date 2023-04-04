import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/auth/presentation/components/rounded_button.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/app_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController login_code_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final padding_v = MediaQuery.of(context).size.width * 0.25;
    final padding_h = MediaQuery.of(context).size.width * 0.1;
    final width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      backgroundColor: bgcolor,
      body: Column(
        children: [
          Stack(
            //  alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.70,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: secondColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80))),
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              Positioned(
                top: MediaQuery.of(context).size.width * 0.3,
                left: MediaQuery.of(context).size.width * 0.31,
                child: Container(
                    height: 120,
                    child: Image.asset("assets/images/user_avatar.png")),
              )
            ],
          ),
          const screenHeader(title: "LogIn Code ", size: 25),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                InputField(
                    isObsecure: true,
                    width: width,
                    label: "",
                    hintText: "",
                    controller: login_code_controller,
                    validator: () {}),
                RoundedButton(
                  text: 'Login',
                  onPress: () {},
                  width: width,
                  withBgColor: true,
                ),
                TextButton(
                  onPressed: () => {Navigator.pushNamed(context, '/register')},
                  child: Text(
                    " don't have an account ?",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            decoration:
                                TextDecoration.underline, // <-- SEE HERE
                            color: Color(0xff474747),
                            fontSize: 15)),
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          )),
          // RoundedButton(
          //   text: 'Login',
          //   onPress: () {},
          //   width: 294,
          //   withBgColor: true,
          // ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/healthy_plan.png"),
                    fit: BoxFit.cover),
              ),
              child: Text(''),
            ),
          ),
        ],
      ),
    );
  }
}
