import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_router.dart';
import 'core/cache/cache_healper.dart';
import 'core/network/dio_helper.dart';
import 'features/auth/data/datasources/network.dart';
import 'injection_container.dart' as ic;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await DioHelper.init();
  await ic.init();
  await ScreenUtil.ensureScreenSize();
  NetworkHandler networkHandler = NetworkHandler();
  await dotenv.load(fileName: "assets/.env");
  initialize(networkHandler);

  final router = FluroRouter();
  AppRouter.configureRoutes(router);

  runApp(ProviderScope(child: const MyApp()));
}

void initialize(NetworkHandler networkHandler) async {
  await networkHandler
      .checkServerConnection()
      .then((value) => {
            print("valll ==== $value"),
          })
      .catchError((errro) => {print("errooor r" + errro.toString())});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.router.generator,

      // debugShowCheckedModeBanner: false,
      // initialRoute: '/jouney',
      // routes: {
      //   '/test': (context) => Test(),
      //   '/': (context) => const WelcomingScreen(),
      //   '/login': (context) => const LoginScreen(),
      //   '/register': (context) => RegisterScreen(),

      // },
    );
  }
}
