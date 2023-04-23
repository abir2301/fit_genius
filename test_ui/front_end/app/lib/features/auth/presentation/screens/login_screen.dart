import 'dart:convert';

import 'package:app/core/extensions/string_extensions.dart';

import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/auth/presentation/components/rounded_button.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../../../../core/app_theme.dart';
import '../../../../core/config.dart';
import '../../../../core/network/network_info.dart';

import '../../domain/repositories/auth_repository.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController login_code_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final padding_v = MediaQuery.of(context).size.width * 0.25;
    final padding_h = MediaQuery.of(context).size.width * 0.1;
    final width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      backgroundColor: bgcolor,
      body: Form(
        key: _formKey,
        child: Column(
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
                      validator: (val) {
                        if (val!.isEmpty) {
                          return ("login code can not be empty ");
                        }
                      }),
                  RoundedButton(
                    text: 'Login',
                    onPress: () async {
                      // bool cnx = false;
                      // await networkHandler
                      //     .checkServerConnection()
                      //     .then((value) =>
                      //         // ignore: avoid_print
                      //         {print("valll ==== $value"), cnx = value})
                      //     .catchError((errro) =>
                      //         // ignore: avoid_print
                      //         {print("errooor r$errro")});

                      // // if (cnx) {
                      // //   if (_formKey.currentState!.validate()) {
                      // //     LoginRequestModel model = LoginRequestModel(
                      // //         code: login_code_controller.text);
                      // //     var response = await networkHandler
                      // //         .loginUser(model)
                      // //         .then((value) => {
                      // //               if (value)
                      // //                 {
                      // //                   print("user login succesfully "),
                      // //                   Navigator.pushNamed(context, '/home')
                      // //                 }
                      // //               else
                      // //                 {print("error while login ")}
                      // //             });

                      // //     // if (response.statusCode == 200 ||
                      //     //     response.statusCode == 201) {
                      //     //   print("status 200");
                      //     //   Map<String, dynamic> output =
                      //     //       json.decode(response.body);
                      //     //   print(output["token"]);
                      //     //   // await storage.write(
                      //     //   //     key: "token", value: output["token"]);
                      //     //   // setState(() {
                      //     //   //   validate = true;
                      //     //   //   circular = false;
                      //     //   // });
                      //     //   // Navigator.pushAndRemoveUntil(
                      //     //   //     context,
                      //     //   //     MaterialPageRoute(
                      //     //   //       builder: (context) => HomePage(),
                      //     //   //     ),
                      //     //   //     (route) => false);
                      //     // } else {
                      //     //   print("object");
                      //     //   String output = json.decode(response.body);
                      //     //   print(output);
                      //     //   // setState(() {
                      //     //   //   validate = false;
                      //     //   //   errorText = output;
                      //     //   //   circular = false;
                      //     //   // });
                      //     // }
                      //   }
                      // } else {
                      //   Navigator.pushNamed(context, '/login');
                      // }
                    },
                    width: width,
                    withBgColor: true,
                  ),
                  TextButton(
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/register')},
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
      ),
    );
  }
}
