import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routerr/mobile_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          const Text(
            'Tela de Login',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.goNamed(MobileRouter.signUpRoute),
              child: const Text('goNamed sign up'),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: ElevatedButton(
              onPressed: () => context.goNamed(MobileRouter.homeRoute),
              child: const Text('goNamed home'),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
