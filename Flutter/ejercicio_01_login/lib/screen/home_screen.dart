import 'package:flutter/material.dart';
import 'package:ejercicio_01_login/widget/sing_up.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.yellow, child: const SingUp()),
    );
  }
}
