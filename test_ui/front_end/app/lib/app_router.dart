import 'package:app/features/auth/presentation/screens/registration_screens/congrat_screen.dart';
import 'package:app/features/auth/presentation/screens/registration_screens/register_screen.dart';
import 'package:app/features/auth/presentation/screens/welcoming_screen.dart';
import 'package:app/main_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'features/auth/presentation/screens/user_info_screens.dart';

import 'features/auth/presentation/screens/login_screen.dart';

class AppRouter {
  static late FluroRouter router;
  static Handler loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginScreen();
  });
  static Handler userInfoHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return UserInformation();
  });
  static Handler registrationHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RegisterScreen();
  });
  static Handler welcommingHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const WelcomingScreen();
  });
  static Handler mainScreenHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const MainScreen();
  });
  //UserInformation
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
    //fluroRouter.define('/', handler: mainScreenHandler);
    //  fluroRouter.define('/', handler: registrationHandler);
    fluroRouter.define('login', handler: loginHandler);
    fluroRouter.define('/', handler: userInfoHandler);
    // fluroRouter.define('products', handler: congratHandler);
    fluroRouter.define('congrat', handler: congratHandler);

    router = fluroRouter;
  }
}
