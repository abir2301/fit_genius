import 'dart:convert';

import 'package:app/core/extensions/string_extensions.dart';

import 'package:app/features/auth/presentation/components/input_field.dart';
import 'package:app/features/auth/presentation/components/rounded_button.dart';
import 'package:app/features/auth/presentation/components/screen_header.dart';
import 'package:app/features/auth/presentation/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/network/network_info.dart';

import '../../../../core/app_theme.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

import '../../../../core/network/network_info.dart';

import '../../../../core/utils/functions/display_snackbar.dart';
import '../../domain/repositories/auth_repository.dart';
import '../providers.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _emailError, _passwordError;
  void _onSubmitted() {
    FocusScope.of(context).unfocus();
    bool isError = false;
    // if (_emailController.text.isEmpty) {
    //   isError = true;
    //   setState(() {
    //     _emailError = 'required_field';
    //   });
    // }
    // if (_passwordController.text.isEmpty) {
    //   isError = true;
    //   setState(() {
    //     _passwordError = 'required_field';
    //   });
    // }
    if (_formKey.currentState!.validate()) {
      if (!ref.read(authProvider).isLoading) {
        ref
            .read(authProvider.notifier)
            .login(_emailController.text, _passwordController.text);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> checkServerConnection() async {
      try {
        String api = dotenv.get("API");

        final client = HttpClient();
        final request = await client.getUrl(Uri.parse(api));
        final response = await request.close();
        final responseBody = await response.transform(utf8.decoder).join();
        if (response.statusCode == HttpStatus.ok &&
            responseBody == 'heyy appiii') {
          return true;
        } else {
          return false;
        }
      } catch (e) {
        return false;
      }
    }

    final state = ref.watch(authProvider);
    ref.listen(authProvider, (previous, next) {
      if (next.isLoggedIn) {
        Navigator.of(context).pushReplacementNamed('congrat');
      } else {
        print("not login in yet ");
        String? error = next.getLoginError;
        if (error != null) {
          displaySnackbar(context, error);
        }
      }
    });
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
            const screenHeader(title: "LogIn  ", size: 25),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  InputField(
                    onchange: (txt) {
                      if (txt.isNotEmpty) {
                        setState(() {
                          _emailError = null;
                        });
                      }
                    },
                    isObsecure: false,
                    width: width,
                    label: "Email",
                    hintText: "abir@gmail.com",
                    controller: _emailController,
                    validator: (val) {
                      if (val!.isValidEmail) {
                        return ("invalid email ");
                      }
                    },
                  ),
                  InputField(
                      onchange: (txt) {
                        if (txt.isNotEmpty) {
                          setState(() {
                            _passwordError = null;
                          });
                        }
                      },
                      isObsecure: true,
                      width: width,
                      label: "Password",
                      hintText: "*****",
                      controller: _passwordController,
                      validator: (val) {
                        if (val!.isValidPassword) {
                          return ("invalid password  ");
                        }
                      }),
                  // RoundedButton(
                  //   text: 'Login',
                  //   onPress: () async {
                  //     FocusScope.of(context).unfocus();
                  //     bool isError = false;
                  //     if (_emailController.text.isEmpty) {
                  //       isError = true;
                  //       setState(() {
                  //         _emailError = 'required_field';
                  //       });
                  //     }
                  //     if (_passwordController.text.isEmpty) {
                  //       isError = true;
                  //       setState(() {
                  //         _passwordError = 'required_field';
                  //       });
                  //     }
                  //     if (!isError) {
                  //       if (!ref.read(authProvider).isLoading) {
                  //         ref.read(authProvider.notifier).login(
                  //             _emailController.text, _passwordController.text);
                  //       }
                  //     }
                  //   },
                  //   width: width,
                  //   withBgColor: true,
                  // ),

                  ElevatedButton(
                    onPressed: state.isLoading ? null : _onSubmitted,
                    style: ElevatedButton.styleFrom(primary: Colors.pink),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          state.maybeWhen(
                              orElse: () => const Icon(Icons.login_rounded,
                                  color: Colors.white, size: 30),
                              loggingIn: () => const CircularProgressIndicator(
                                  color: Colors.white),
                              loggedIn: (_) => const Icon(Icons.done,
                                  color: Colors.white, size: 30)),
                          const SizedBox(width: 10),
                          Text(
                            state.maybeWhen(
                                orElse: () => 'login',
                                loggingIn: () => 'logging_in',
                                loggedIn: (_) => 'done'),
                            style: TextStyle(
                                color: Colors.white,
                                //  fontSize: 17.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Consumer(
                    builder: (context, ref, child) {
                      final state = ref.watch(authProvider);
                      return state.maybeWhen(
                        orElse: () => Container(),
                        loginError: (errors, error) {
                          if (errors != null) {
                            return ListView.separated(
                              itemBuilder: (context, index) => Center(
                                  child: Text(
                                errors[index],
                                style: const TextStyle(color: Colors.red),
                              )),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 8),
                              itemCount: errors.length,
                              shrinkWrap: true,
                            );
                          }
                          return Container();
                        },
                      );
                    },
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
