import 'package:app/features/auth/presentation/screens/registration_screens/congrat_screen.dart';
import 'package:app/features/auth/presentation/screens/welcoming_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/auth/presentation/providers.dart';
import 'features/auth/presentation/screens/initila_screen.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.watch(authProvider);
      return state.maybeWhen(
          unnauthenticated: () => WelcomingScreen(),
          initial: () => InitialScreen(),
          orElse: () => InitialScreen(),
          loggingOut: () => WelcomingScreen(),
          loggedOut: () => WelcomingScreen(),
          loggedIn: (_) => CongratScreen(),
          registered: (_) => CongratScreen(),
          checked: (_) => CongratScreen());
    });
  }
}
