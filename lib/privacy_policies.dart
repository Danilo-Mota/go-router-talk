import 'package:flutter/material.dart';

class PrivacyPolicies extends StatefulWidget {
  const PrivacyPolicies({super.key});

  @override
  State<PrivacyPolicies> createState() => _PrivacyPoliciesState();
}

class _PrivacyPoliciesState extends State<PrivacyPolicies> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          Text(
            'Tela de Políticas de Privacidade',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
