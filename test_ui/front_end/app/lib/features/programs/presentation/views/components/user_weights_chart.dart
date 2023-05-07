import 'package:app/features/programs/domain/models/user_program/user_program.dart';
import 'package:app/features/user_informations/presentation/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../core/app_theme.dart';

class WeightChart extends ConsumerStatefulWidget {
  WeightChart();

  @override
  ConsumerState<WeightChart> createState() => _WeightChartState();
}

class _WeightChartState extends ConsumerState<WeightChart> {
  List<WeightEntry> weightEntries = [
    WeightEntry(DateTime(2023, 01, 25), 52),
    WeightEntry(DateTime(2023, 02, 10), 60),
    WeightEntry(DateTime(2023, 02, 20), 61),
    WeightEntry(DateTime(2023, 03, 25), 63),
  ];
  @override
  void initState() {
    Future<void>.delayed(Duration.zero, () {
      ref.read(programProvider.notifier).getPeformance();
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(programProvider);
    return state.maybeWhen(
      initial: () => Center(
        child: Container(
          height: 80,
          width: 80,
          child: CircularProgressIndicator(color: pink),
        ),
      ),
      orElse: () => Center(
        child: Text('some thin went wrong '),
      ),
      loading: () => Center(
        child: Container(
          height: 80,
          width: 80,
          child: CircularProgressIndicator(color: pink),
        ),
      ),
      loadedPerformance: (userPErformance) => SfCartesianChart(
        backgroundColor: Colors.white, // Set chart background color
        plotAreaBackgroundColor: Colors.white, // Set plot area background color
        primaryXAxis: DateTimeAxis(
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          labelStyle: TextStyle(color: Colors.grey),
        ),
        primaryYAxis: NumericAxis(
          numberFormat:
              NumberFormat('#.##'), // Set number format for Y-axis labels
          labelStyle: TextStyle(color: Colors.grey),
        ),
        series: <ChartSeries>[
          LineSeries<UserProgram, DateTime>(
            dataSource: userPErformance.data,
            xValueMapper: (UserProgram entry, _) => entry.date,
            yValueMapper: (UserProgram entry, _) => entry.result,
            color: pink, // Set line color
            markerSettings: MarkerSettings(
              isVisible: true, // Display markers on data points
              color: pink, // Set marker color
            ),
            dataLabelSettings: DataLabelSettings(
              isVisible: true, // Display data labels on data points
              textStyle: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}

class WeightEntry {
  final DateTime week;
  final double weight;

  WeightEntry(this.week, this.weight);
}
