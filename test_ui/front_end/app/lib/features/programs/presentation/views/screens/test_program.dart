import 'package:app/features/programs/domain/models/program/program.dart';
import 'package:app/features/programs/domain/models/user_program/user_program.dart';
import 'package:app/features/user_informations/presentation/providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestProgramScreens extends ConsumerStatefulWidget {
  const TestProgramScreens({super.key});

  @override
  ConsumerState<TestProgramScreens> createState() => _TestProgramScreensState();
}

class _TestProgramScreensState extends ConsumerState<TestProgramScreens> {
  late Program program;
  late UserPerformance userPerformance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(builder: (context, ref, child) {
      final state = ref.watch(programProvider);
      return state.maybeWhen(
          initial: () => Text("initila "),
          orElse: () => Text("or lese  "),
          loading: () => Text("loading "),
          gettingProgram: () => Text("waiting for programs "),
          gettingPerformance: () => Text("waiting for performes "),
          loadedProgram: (program) => Text(program.toString()),
          loadedPerformance: (userPerformance) =>
              Text(userPerformance.toString()));
    }));
  }
}
