import 'package:app/features/user_informations/presentation/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class NbWeeb extends ConsumerStatefulWidget {
  const NbWeeb({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NbWeebState();
}

class _NbWeebState extends ConsumerState<NbWeeb> {
  @override
  void initState() {
    Future<void>.delayed(Duration.zero, () {
      ref.read(performanceProvider.notifier).getPeformance();
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(performanceProvider);
    return state.maybeWhen(
      loadedProgram: (program) => Text("new p "),
      orElse: () => Text("week ??"),
      error: (error) => Text(error),
      loadedPerformance: (userPErformance) => Text(
          " week : " + userPErformance.data.length.toString(),
          style: GoogleFonts.poppins(
              color: const Color(0xff6F6767),
              fontSize: 18,
              fontWeight: FontWeight.bold)),
      initial: () => Text(
          ref.read(performanceProvider.notifier).nbWeek.toString(),
          style: GoogleFonts.poppins(
              color: const Color(0xff6F6767),
              fontSize: 18,
              fontWeight: FontWeight.bold)),
    );
  }
}
