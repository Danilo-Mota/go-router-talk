import 'package:flutter/material.dart';

class ChangePersonalData extends StatefulWidget {
  const ChangePersonalData({super.key});

  @override
  State<ChangePersonalData> createState() => _ChangePersonalDataState();
}

class _ChangePersonalDataState extends State<ChangePersonalData> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          Text(
            'Tela de Alterar Dados Pessoais',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
