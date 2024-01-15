import 'package:ejercicio_01_login/widget/log_in.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio_01_login/widget/sing_up.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFE62F16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/path_logo.png',
                width: 400,
                height: 400,
              ),
            ),
            const Expanded(
              child: Text(
                'Beautiful, Private Sharing',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Already have an account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: const Text(
                        '2 Sing up',
                        style: TextStyle(
                          color: Color(0xFFE62F16),
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onPressed: () {})),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: const Text(
                        '2 Log In',
                        style: TextStyle(
                          color: Color(0xFFE62F16),
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onPressed: () {})),
            ),
            RichText(
              text: const TextSpan(
                text: 'Terms of User',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline),
                children: <TextSpan>[
                  TextSpan(
                    text: 'and',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                  ),
                  TextSpan(
                    text: ' Privacy Policy',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            const SingUp(),
            const LogIn()
          ],
        ),
      ),
    );
  }
}
