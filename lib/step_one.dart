import 'package:flutter/material.dart';

class StepOne extends StatefulWidget {
  const StepOne({super.key});

  @override
  State<StepOne> createState() => _StepOneState();
}

class _StepOneState extends State<StepOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          Text(
            'Tela StepOne',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
