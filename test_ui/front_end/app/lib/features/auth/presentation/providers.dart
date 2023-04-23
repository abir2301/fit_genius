import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/features/auth/presentation/states/auth_state.dart';
import 'package:app/features/auth/presentation/viewmodel/auth_viewmodel.dart';
import 'package:app/injection_container.dart' as ic;

final authProvider = StateNotifierProvider<AuthViewModel, AuthState>((ref) {
  return ic.sl<AuthViewModel>();
});
