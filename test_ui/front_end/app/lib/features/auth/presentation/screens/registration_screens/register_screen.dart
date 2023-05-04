import 'package:app/core/extensions/string_extensions.dart';
import 'package:app/features/auth/presentation/providers.dart';
import 'package:app/features/auth/presentation/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/app_theme.dart';
import '../../../../../core/utils/functions/display_snackbar.dart';
import '../../components/image.dart';
import '../../components/input_field.dart';
import '../../components/screen_header.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? _emailError, _nameError, _passwordError;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authProvider);
    ref.listen(authProvider, (previous, next) {
      if (next.isRegistered) {
        Navigator.of(context).pushReplacementNamed('userInfo');
      } else {
        String? error = next.getRegisterError;
        if (error != null) {
          displaySnackbar(context, error);
        }
      }
    });
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            children: [
              Column(
                children: [
                  screenHeader(title: "Acount", size: 30),
                  InputField(
                    onchange: (txt) {
                      if (txt.isNotEmpty) {
                        setState(() {
                          _emailError = null;
                        });
                      }
                    },
                    // width: MediaQuery.of(context).size.width * 0.8,
                    label: "Email",
                    textInputType: TextInputType.emailAddress,
                    icon: Icons.email_outlined,
                    controller: _emailController,
                    hintText: 'user@user.com',
                    validator: (value) {
                      if (!value!.isValidEmail) {
                        return (' Invalid email');
                      }
                      return null;
                    },
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InputField(
                    onchange: (txt) {
                      if (txt.isNotEmpty) {
                        setState(() {
                          _nameError = null;
                        });
                      }
                    },
                    // width: MediaQuery.of(context).size.width * 0.8,
                    label: "Username",
                    textInputType: TextInputType.text,
                    icon: Icons.person,
                    controller: _nameController,
                    hintText: 'abir ch ',
                    validator: (value) {
                      if (!value!.isValidName) {
                        return (' Invalid user name ');
                      }
                      return null;
                    },
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InputField(
                    onchange: (txt) {
                      if (txt.isNotEmpty) {
                        setState(() {
                          _passwordError = null;
                        });
                      }
                    },
                    // width: MediaQuery.of(context).size.width * 0.8,
                    label: "password",
                    isObsecure: true,
                    textInputType: TextInputType.text,
                    icon: Icons.lock,
                    controller: _passwordController,
                    hintText: '*******',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return (' Invalid password');
                      }
                      return null;
                    },
                    onEditingComplete: () {},
                  ),
                  TextButton(
                    onPressed: () {
                      print("button");
                      FocusScope.of(context).unfocus();
                      if (_formKey.currentState!.validate()) {
                        if (!ref.read(authProvider).isLoading) {
                          print("register ");
                          ref.read(authProvider.notifier).register(
                                _emailController.text,
                                _nameController.text,
                                _passwordController.text,
                              );
                        }
                      }
                    },
                    child: Text(
                      " Submit",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
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
      ),
    );
  }
}
