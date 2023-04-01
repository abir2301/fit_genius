import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/auth/presentation/components/rounded_button.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: primaryColor),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: padding_v, horizontal: padding_h),
        child: ListView(
          children: [
            screenHeader(title: "LogIn Code ", size: 25),
            InputField(
                label: "",
                hintText: "",
                controller: login_code_controller,
                validator: () {}),
            RoundedButton(
              text: 'Login',
              onPress: () {},
              width: 0,
              withBgColor: true,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/healthy_plan.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Text(''),
            )
          ],
        ),
      ),
    );
  }
}
