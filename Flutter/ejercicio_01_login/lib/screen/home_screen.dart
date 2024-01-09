import 'package:ejercicio_01_login/widget/log_in.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio_01_login/widget/sing_up.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Path',
              style: TextStyle(
                color: Colors.white,
                fontSize: 65,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Beautiful, Private Sharing',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 120),
            Image.asset(
              'assets/path_logo.png',
              width: 200,
              height: 200,
            ),
            const SingUp(),
            const LogIn()
          ],
        ),
      ),
    );
  }
}
