import 'package:app/features/auth/presentation/screens/registration_screens/congrat_screen.dart';
import 'package:app/features/auth/presentation/screens/welcoming_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentation/screens/login_screen.dart';
import 'features/auth/presentation/screens/registration-screen.dart';

class AppRouter {
  static late FluroRouter router;
  static Handler loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginScreen();
  });
  static Handler registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RegisterScreen();
  });
  static Handler welcommingHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const WelcomingScreen();
  });
  static Handler congratHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const CongratScreen();
  });

  static void configureRoutes(FluroRouter fluroRouter) {
    fluroRouter.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return Center(
        child: Text('not_found',
            style: const TextStyle(
              fontSize: 25,
            )),
      );
    });
    fluroRouter.define('/', handler: welcommingHandler);

    fluroRouter.define('login', handler: loginHandler);
    fluroRouter.define('register', handler: registerHandler);
    // fluroRouter.define('products', handler: congratHandler);
    fluroRouter.define('congrat', handler: congratHandler);

    router = fluroRouter;
  }
}
