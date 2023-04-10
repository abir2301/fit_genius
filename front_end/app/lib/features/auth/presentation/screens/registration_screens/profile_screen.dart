import 'package:app/core/extensions/string_extensions.dart';
import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/image.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          children: [
            Column(
              children: [
                screenHeader(title: "Acount", size: 30),
                InputField(
                  // width: MediaQuery.of(context).size.width * 0.8,
                  label: "Email",
                  textInputType: TextInputType.emailAddress,
                  icon: Icons.email_outlined,
                  controller: emailController,
                  hintText: 'user@user.com',
                  validator: (value) {
                    if (value!.isValidEmail) {
                      return ('Enter valid email');
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                InputField(
                  // width: MediaQuery.of(context).size.width * 0.8,
                  label: "Username",
                  textInputType: TextInputType.text,
                  icon: Icons.person,
                  controller: usernameController,
                  hintText: 'abir ch ',
                  validator: (value) {
                    if (value!.isValidName) {
                      return ('Enter valid user name ');
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                InputField(
                  // width: MediaQuery.of(context).size.width * 0.8,
                  label: "password",
                  isObsecure: true,
                  textInputType: TextInputType.text,
                  icon: Icons.lock,
                  controller: passwordController,
                  hintText: '*******',
                  validator: (value) {
                    if (value!.isValidPassword) {
                      return ('Enter valid password');
                    }
                  },
                ),
                TextButton(
                  onPressed: () {},
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
                ),
                const SizedBox(
                  height: 5,
                ),
                ImageWidget(imageUrl: "assets/images/healthy_plan.png")
              ],
            )
          ]),
    );
  }
}
