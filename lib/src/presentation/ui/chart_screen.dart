import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

class ChartScreen extends StatefulWidget {
  const ChartScreen({super.key});

  @override
  State<ChartScreen> createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashedCircularProgressBar.aspectRatio(
  aspectRatio: 1, // width ÷ height
  valueNotifier: _valueNotifier,
  progress: 478,
  maxProgress: 670,
  corners: StrokeCap.butt,
  foregroundColor: Colors.blue,
  backgroundColor: const Color(0xffeeeeee),
  foregroundStrokeWidth: 36,
  backgroundStrokeWidth: 36,
  animation: true,
  child: Center(
    child: ValueListenableBuilder(
      valueListenable: _valueNotifier,
      builder: (_, double value, __) => Text(
        '${value.toInt()}%',
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 60
        ),
      ),
    ),
  ),
),
    );
  }
}