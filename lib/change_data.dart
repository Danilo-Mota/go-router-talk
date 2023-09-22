import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChangeData extends StatefulWidget {
  const ChangeData({super.key});

  @override
  State<ChangeData> createState() => _ChangeDataState();
}

class _ChangeDataState extends State<ChangeData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          const Text(
            'Tela de Alterar dados',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.pushNamed(''),
              child: const Text('goNamed dados pessoais'),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: ElevatedButton(
              onPressed: () => context.pushNamed(''),
              child: const Text('goNamed dados profissionais'),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
