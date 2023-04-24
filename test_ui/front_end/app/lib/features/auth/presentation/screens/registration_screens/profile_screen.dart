import 'package:app/core/app_theme.dart';
import 'package:app/core/extensions/string_extensions.dart';
import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:app/features/auth/presentation/providers.dart';
import 'package:app/features/auth/presentation/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/functions/display_snackbar.dart';
import '../../components/image.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  String? _emailError, _nameError, _passwordError, _rePasswordError;

  void _onSubmitted() {
    FocusScope.of(context).unfocus();
    bool isError = false;
    if (_emailController.text.isEmpty) {
      isError = true;
      setState(() {
        _emailError = 'required_field';
      });
    }
    if (_nameController.text.isEmpty) {
      isError = true;
      setState(() {
        _nameError = 'required_field';
      });
    }
    if (_passwordController.text.isEmpty) {
      isError = true;
      setState(() {
        _passwordError = 'required_field';
      });
    }
    if (_rePasswordController.text.isEmpty) {
      isError = true;
      setState(() {
        _rePasswordError = 'required_field';
      });
    }
    if (!isError) {
      if (!ref.read(authProvider).isLoading) {
        ref.read(authProvider.notifier).register(
              _emailController.text,
              _nameController.text,
              _passwordController.text,
            );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authProvider);
    ref.listen(authProvider, (previous, next) {
      if (next.isRegistered) {
        Navigator.of(context).pushReplacementNamed('congrat');
      } else {
        String? error = next.getRegisterError;
        if (error != null) {
          displaySnackbar(context, error);
        }
      }
    });
    return Scaffold(
      body: ListView(
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
                    if (value!.isValidEmail) {
                      return ('Enter valid email');
                    }
                  },
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
                    if (value!.isValidName) {
                      return ('Enter valid user name ');
                    }
                  },
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
                    if (value!.isValidPassword) {
                      return ('Enter valid password');
                    }
                  },
                ),
                TextButton(
                  onPressed: () async {
                    await _onSubmitted;
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
    );
  }
}
