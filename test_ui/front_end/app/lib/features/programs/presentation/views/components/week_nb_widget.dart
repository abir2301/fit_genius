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
    ref.read(programProvider.notifier).getPeformance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(programProvider);
    return state.maybeWhen(
      orElse: () => Text("week ??"),
      error: (error) => Text(error),
      initial: () => Text(ref.read(programProvider.notifier).nbWeek.toString(),
          style: GoogleFonts.poppins(
              color: const Color(0xff6F6767),
              fontSize: 18,
              fontWeight: FontWeight.bold)),
    );
  }
}
