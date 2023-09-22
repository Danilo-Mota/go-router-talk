import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routerr/mobile_router.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          const Text(
            'Tela de SignUp',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.goNamed(MobileRouter.stepOneRoute),
              child: const Text('goNamed step one'),
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: ElevatedButton(
              onPressed: () => context.goNamed(MobileRouter.stepTwoRoute),
              child: const Text('goNamed step two'),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
