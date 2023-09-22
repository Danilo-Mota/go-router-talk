import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          const Text(
            'Tela de Profile',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.goNamed('alterar_dados'),
              child: const Text('goNamed alterar dados'),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
