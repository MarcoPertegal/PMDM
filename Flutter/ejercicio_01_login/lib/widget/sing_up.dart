import 'package:flutter/material.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.thumb_up),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Hola mundo'),
        )
      ],
    );
  }
}
