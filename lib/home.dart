import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          const Text(
            'Tela de Home',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.goNamed('/consultas'),
              child: const Text('pushNamed consultas'),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
